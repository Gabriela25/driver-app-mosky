import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../query_result_view.dart';
import '../../schema.gql.dart';
import '../register.graphql.dart';

class RegisterContactDetailsView extends StatefulWidget {
  final String? firstName;
  final String? lastName;
  final String? certificateNumber;
  final Enum$Gender? gender;
  final String? address;
  final String email;
  final String password;
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterContactDetailsView({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.certificateNumber,
    required this.gender,
    required this.address,
    required this.email,
    required this.password,
    required this.onContinue,
    required this.onLoadingStateUpdated,
  });

  @override
  State<RegisterContactDetailsView> createState() =>
      _RegisterContactDetailsViewState();
}

class _RegisterContactDetailsViewState
    extends State<RegisterContactDetailsView> {
  final _formKey = GlobalKey<FormState>();
  Enum$Gender? gender;
  String? address;
  late String email;
  late String password;
  String? firstName;
  String? lastName;
  String? certificateNumber;

  @override
  void initState() {
    super.initState();
    gender = widget.gender;
    address = widget.address;
    email = widget.email;
    password = widget.password;
    firstName = widget.firstName;
    lastName = widget.lastName;
    certificateNumber = widget.certificateNumber;
    //widget.onLoadingStateUpdated(false);
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
                    Text(
                      S.of(context).register_contact_details_title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: firstName,
                      onChanged: (value) => setState(() => firstName = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).firstname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: lastName,
                      onChanged: (value) => setState(() => lastName = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).lastname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: certificateNumber,
                      onChanged: (value) =>
                          setState(() => certificateNumber = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true,
                          labelText: S.of(context).certificate_number),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: DropdownButtonFormField<Enum$Gender>(
                          value: gender,
                          decoration: InputDecoration(
                              isDense: true, labelText: S.of(context).gender),
                          items: <DropdownMenuItem<Enum$Gender>>[
                            DropdownMenuItem(
                              value: Enum$Gender.Male,
                              child: Text(S.of(context).gender_male),
                            ),
                            DropdownMenuItem(
                                value: Enum$Gender.Female,
                                child: Text(S.of(context).gender_female))
                          ],
                          onSaved: (Enum$Gender? value) {
                            gender = value;
                          },
                          onChanged: (value) {
                            gender = value;
                          }),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: address,
                      onChanged: (value) {
                        address = value;
                      },
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).address),
                    ),
                  ]),
            ),
          ),
        ),
        Mutation$UpdateProfile$Widget(
            options: WidgetOptions$Mutation$UpdateProfile(
              onCompleted: (result, parsedData) {
                widget.onLoadingStateUpdated(false);
                widget.onContinue();
              },
              onError: (error) => {
                print('Error en la pagina de registro: $error'),
                showOperationErrorMessage(context, error)
              },
            ),
            builder: (runMutation, result) {
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      bool? isValid = _formKey.currentState?.validate();
                      if (isValid != true) return;
                      _formKey.currentState?.save();
                      widget.onLoadingStateUpdated(true);
                      final client = GraphQLProvider.of(context).value;
                      final driverId = Hive.box('user').get('driverId');
                      print('DEBUG: driverId obtenido de Hive: $driverId');
                      if (driverId == null) {
                        print('DEBUG: Iniciando flujo de registro nuevo...');
                        final user = FirebaseAuth.instance.currentUser;
                        print('DEBUG: Usuario de Firebase actual: $user');
                        if (user != null) {
                          final String? firebaseToken = await user.getIdToken();
                          print(
                              'DEBUG: Token de Firebase obtenido: $firebaseToken');
                          if (firebaseToken == null) {
                            widget.onLoadingStateUpdated(false);
                            showOperationErrorMessage(
                                context,
                                'No se pudo obtener el token de Firebase.'
                                    as OperationException?);
                            return;
                          }
                          print(
                              'DEBUG: Antes de ejecutar mutación de login...');
                          final loginResult =
                              await client.mutate(MutationOptions(
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

                            final getDriverIdResult =
                                await client.query(QueryOptions(
                              document: gql(getDriverIdQuery),
                              variables: {'jwtToken': jwt},
                              fetchPolicy: FetchPolicy.noCache,
                            ));

                            print(
                                'Resultado de la consulta getDriverId: ${getDriverIdResult.data}');
                            final driverId =
                                getDriverIdResult.data?['getDriverId'];

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
                                  'firstName': firstName,
                                  'lastName': lastName,
                                  'certificateNumber': certificateNumber,
                                  'status': 'WaitingDocuments',
                                }
                              }
                            };
                            print('driverId usado para update: $driverId');
                            print(
                                'Variables enviadas a updateOneDriver: $updateVariables');

                            final updateResult =
                                await client.mutate(MutationOptions(
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
                                    content: Text(
                                        'No se pudo actualizar el perfil.')),
                              );
                              return;
                            }
                          } else {
                            widget.onLoadingStateUpdated(false);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text('No se recibió JWT del servidor.')),
                            );
                            return;
                          }
                        } else {
                          widget.onLoadingStateUpdated(false);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'No hay usuario de Firebase autenticado.')),
                          );
                          return;
                        }
                      }
                      widget.onLoadingStateUpdated(false);
                      widget.onContinue();
                    },
                    child: Text(S.of(context).action_continue)),
              );
            })
      ],
    );
  }
}
