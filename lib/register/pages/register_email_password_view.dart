import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/config.dart';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_codes/country_codes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../query_result_view.dart';
import '../../schema.gql.dart';
import '../register.graphql.dart';
import '../get_driver_dynamic.dart';

class RegisterEmailPasswordView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email = "";
  String? password = "";
  String? firstName = "";
  String? lastName = "";
  String? certificateNumber = "";
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;

  RegisterEmailPasswordView(
      {super.key,
      required this.email,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.certificateNumber,
      required this.onContinue,
      required this.onLoadingStateUpdated});

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
                    // ...existing code...
                    TextFormField(
                      initialValue: email,
                      onChanged: (value) => email = value,
                      validator: (value) => value?.isEmpty ?? true ? null : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).email),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: password,
                      onChanged: (value) => password = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: ('password')),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: firstName,
                      onChanged: (value) => firstName = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).firstname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: lastName,
                      onChanged: (value) => lastName = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).lastname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: certificateNumber,
                      onChanged: (value) => certificateNumber = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true,
                          labelText: S.of(context).certificate_number),
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
              onLoadingStateUpdated(true);
              try {
                final client = GraphQLProvider.of(context).value;
                print('Iniciando registro del driver...');
                final user = FirebaseAuth.instance.currentUser;
                print('Usuario de Firebase actual: $user');  
                if (user != null) {
                  final String? firebaseToken = await user.getIdToken();
                  print('Token de Firebase obtenido: $firebaseToken');
                  if (firebaseToken == null) {
                    onLoadingStateUpdated(false);
                    showOperationErrorMessage(context, 'No se pudo obtener el token de Firebase.' as OperationException?);
                    return;
                  }
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
                    print('JWT guardado correctamente');
                    // Consultar datos del driver actual
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

                  print('Resultado de la consulta getDriverId: ${getDriverIdResult.data}');
                  final driverId = getDriverIdResult.data?['getDriverId'];
                  
                  //  final driverId = meResult.data?['me']?['id'];
                    if (driverId != null) {
                      Hive.box('user').put('driverId', driverId);
                      print('driverId guardado en Hive: $driverId');
                    } else {
                      print('No se pudo obtener el driverId de la consulta Me.');
                    }
                    // Ahora actualizar el perfil del driver
                    final updateOneDriverMutation = '''
                      mutation UpdateOneDriver(
                        \$input: UpdateOneDriverInput!
                      ) {
                        updateOneDriver(input: \$input) {
                          id
                          firstName
                          lastName
                          email
                          certificateNumber
                        }
                      }
                    ''';

                    final updateVariables = {
                      'input': {
                        'id': driverId,
                        'update': {
                          'firstName': firstName,
                          'lastName': lastName,
                          'email': email,
                          'password': password,
                          'certificateNumber': certificateNumber,
                        }
                      }
                    };
                    print('driverId usado para update: $driverId');
                    print('Variables enviadas a updateOneDriver: $updateVariables');

                    final updateResult = await client.mutate(MutationOptions(
                      document: gql(updateOneDriverMutation),
                      variables: updateVariables,
                    ));

                    print('Respuesta de updateOneDriver: ${updateResult.data}');
                    print('Errores de updateOneDriver: ${updateResult.exception}');

                    if (updateResult.data != null && updateResult.data?['updateOneDriver'] != null) {
                      onLoadingStateUpdated(false);
                      onContinue();
                    } else {
                      onLoadingStateUpdated(false);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('No se pudo actualizar el perfil.')),
                      );
                    }
                  } else {
                    onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('No se recibió JWT del servidor.')),
                    );
                  }
                } else {
                  onLoadingStateUpdated(false);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('No hay usuario de Firebase autenticado.')),
                  );
                }
              } catch (e) {
                onLoadingStateUpdated(false);
                print('Error en la página de registro: $e');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error en la página de registro: $e')),
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
