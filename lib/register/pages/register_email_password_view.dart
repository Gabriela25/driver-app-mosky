import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'package:sms_firebase/query_result_view.dart';

class RegisterEmailPasswordView extends StatefulWidget {
  final String? email;
  final String? password;
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;
  const RegisterEmailPasswordView(
      {super.key,
      required this.email,
      required this.password,
      required this.onContinue,
      required this.onLoadingStateUpdated});

  @override
  State<RegisterEmailPasswordView> createState() =>
      _RegisterEmailPasswordViewState();
}

class _RegisterEmailPasswordViewState extends State<RegisterEmailPasswordView> {
  final _formKey = GlobalKey<FormState>();
  late String? email;
  late String? password;

  @override
  void initState() {
    super.initState();
    email = widget.email;
    password = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      initialValue: email,
                      onChanged: (value) => setState(() => email = value),
                      validator: (value) =>
                          value?.isEmpty ?? true ? null : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).email),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: password,
                      onChanged: (value) => setState(() => password = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: ('password')),
                    ),
                  ]),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () async {
              bool? isValid = _formKey.currentState?.validate();
              if (isValid != true) return;
              _formKey.currentState?.save();
              widget.onLoadingStateUpdated(true);
              try {
                final client = GraphQLProvider.of(context).value;
                final driverId = Hive.box('user').get('driverId');
                if (driverId == null) {
                  UserCredential? userCredential;
                  try {
                    userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
                  } catch (e) {
                    widget.onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error de autenticación Firebase: $e')),
                    );
                    return;
                  }
                  final user = userCredential.user;
                  print('DEBUG: Usuario de Firebase actual: $user');
                  if (user != null) {
                    final String? firebaseToken = await user.getIdToken();
                    print('DEBUG: Token de Firebase obtenido: $firebaseToken');
                    if (firebaseToken == null) {
                      widget.onLoadingStateUpdated(false);
                      showOperationErrorMessage(
                          context,
                          'No se pudo obtener el token de Firebase.'
                              as OperationException?);
                      return;
                    }
                    print('DEBUG: Antes de ejecutar mutación de login...');
                    final loginResult = await client.mutate(MutationOptions(
                      document: gql('''
                      mutation Login(\$firebaseToken: String!) {
                        login(input: { firebaseToken: \$firebaseToken }) {
                          jwtToken
                        }
                      }
                    '''),
                      variables: {'firebaseToken': firebaseToken},
                    ));
                    print('Resultado del login: ${loginResult}');
                    final jwt = loginResult.data?['login']?['jwtToken'];
                    if (jwt != null) {
                      Hive.box('user').put('jwt', jwt);
                      final getDriverIdQuery = '''
                    query GetDriverId(\$jwtToken: String!) {
                      getDriverId(jwtToken: \$jwtToken)
                    }
                  ''';

                      final getDriverIdResult = await client.query(QueryOptions(
                        document: gql(getDriverIdQuery),
                        variables: {'jwtToken': jwt},
                        fetchPolicy: FetchPolicy.noCache,
                      ));

                      print(
                          'Resultado de la consulta getDriverId: ${getDriverIdResult.data}');
                      final driverId = getDriverIdResult.data?['getDriverId'];

                      //  final driverId = meResult.data?['me']?['id'];
                      if (driverId != null) {
                        Hive.box('user').put('driverId', driverId);
                        print('driverId guardado en Hive: $driverId');
                      } else {
                        print(
                            'No se pudo obtener el driverId de la consulta Me.');
                      }
                      // Ahora actualizar el perfil del driver
                      final updateOneDriverMutation = '''
                      mutation UpdateOneDriver(
                        \$input: UpdateOneDriverInput!
                      ) {
                        updateOneDriver(input: \$input) {
                          id   
                          email
                         password
                        }
                      }
                    ''';

                      final updateVariables = {
                        'input': {
                          'id': driverId,
                          'update': {
                            'email': email,
                            'password': password,
                          }
                        }
                      };
                      print('driverId usado para update: $driverId');
                      print(
                          'Variables enviadas a updateOneDriver: $updateVariables');

                      final updateResult = await client.mutate(MutationOptions(
                        document: gql(updateOneDriverMutation),
                        variables: updateVariables,
                      ));

                      if (updateResult.data != null &&
                          updateResult.data?['updateOneDriver'] != null) {
                        // Guardar bandera de nuevo registro
                        Hive.box('user').put('isNewRegistration', true);
                        print(
                            'DEBUG: isNewRegistration guardado en Hive = true');
                        widget.onLoadingStateUpdated(false);
                        print(
                            'DEBUG: Llamando widget.onContinue() tras registro nuevo');
                        widget.onContinue();
                        print(
                            'DEBUG: widget.onContinue() llamado tras registro nuevo');
                        return;
                      } else {
                        widget.onLoadingStateUpdated(false);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                                  Text('No se pudo actualizar el perfil.')),
                        );
                        return;
                      }
                    } else {
                      widget.onLoadingStateUpdated(false);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('No se recibió JWT del servidor.')),
                      );
                      return;
                    }
                  } else {
                    widget.onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                              Text('No hay usuario de Firebase autenticado.')),
                    );
                    return;
                  }
                 
                }
                // Si driverId ya existe, es login
                if (driverId != null) {
                  final loginQuery = '''
                    query LoginByEmailPassword( email: String!,  password: String!) {
                      loginByEmailPassword(email:  email, password:  password) {
                        jwtToken
                        status
                      }
                    }
                  ''';
                  final loginResult = await client.query(QueryOptions(
                    document: gql(loginQuery),
                    variables: {'email': email, 'password': password},
                    fetchPolicy: FetchPolicy.noCache,
                  ));
                  print('DEBUG: loginResult: ${loginResult}');
                  final loginData = loginResult.data?['loginByEmailPassword'];
                  if (loginData != null &&
                      loginData['jwtToken'] != null &&
                      loginData['status'] == 'Offline') {
                    Hive.box('user').put('jwt', loginData['jwtToken']);
                    widget.onLoadingStateUpdated(false);
                    widget.onContinue();
                    return;
                  } else if (loginData != null &&
                      loginData['jwtToken'] != null) {
                    widget.onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                              Text('El usuario no está en estado Offline.')),
                    );
                    return;
                  } else if (loginResult.hasException) {
                    widget.onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Credenciales incorrectas.')),
                    );
                    return;
                  }
                }
                widget.onLoadingStateUpdated(false);
              } catch (e) {
                print('DEBUG: Excepción capturada en catch: $e');
                widget.onLoadingStateUpdated(false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            },
            child: Text(S.of(context).action_continue),
          ),
        )
      ],
    );
  }

  
}
