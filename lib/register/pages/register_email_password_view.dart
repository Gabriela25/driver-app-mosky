import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'package:sms_firebase/query_result_view.dart';
import 'package:sms_firebase/register/pages/register_contact_details_view.dart';
import 'package:sms_firebase/register/pending_approval_screen.dart';

import '../../schema.gql.dart';

class RegisterEmailPasswordView extends StatefulWidget {
  final String? email;
  final String? password;
    final Future<void> Function(Map<String, dynamic> driverData) onContinue;
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
              final driverId = Hive.box('user').get('driverId');
              if (driverId != null) {
                widget.onLoadingStateUpdated(true);
                final client = GraphQLProvider.of(context).value;
                final loginQuery = '''
                  query LoginByEmailPassword(
                    \$email: String!, \$password: String!
                  ) {
                    loginByEmailPassword(email: \$email, password: \$password) {
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
                final loginData = loginResult.data?['loginByEmailPassword'];
                if (loginData != null &&
                    loginData['jwtToken'] != null &&
                    loginData['status'] == 'Offline') {
                  Hive.box('user').put('jwt', loginData['jwtToken']);
                  widget.onLoadingStateUpdated(false);
                  Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                  return;
                } else if (loginData != null && loginData['jwtToken'] != null && loginData['status'] == 'WaitingDocuments') {
                  widget.onLoadingStateUpdated(false);
                  print('DEBUG: loginData recibida: $loginData');
                  
                    // Realizar consulta de datos del driver aquí
                    final client = GraphQLProvider.of(context).value;
                    final driverQuery = '''
                      query Me(\$versionCode: Int!, \$id: ID!) {
                        Me(versionCode: \$versionCode, id: \$id) {
                          driver {
                            id
                            firstName
                            lastName
                            certificateNumber
                            gender
                            address
                            email
                          }
                        }
                      }
                    ''';
                    final driverResult = await client.query(QueryOptions(
                      document: gql(driverQuery),
                      variables: {
                        'versionCode': 10000000, // Usa el valor adecuado para tu app
                        'id': driverId,
                      },
                      fetchPolicy: FetchPolicy.noCache,
                    ));
                    print('DEBUG: driverResult recibida: ${driverResult}');
                    final driverData = driverResult.data?['Me']?['driver'];
                    print('DEBUG: driverData extraída: $driverData');
                    if (driverData != null) {
                      Enum$Gender? genderEnum;
                      try {
                        genderEnum = driverData['gender'] != null ? fromJson$Enum$Gender(driverData['gender']) : null;
                      } catch (_) {
                        genderEnum = null;
                      }
                      await widget.onContinue({
                        'firstName': driverData['firstName'] ?? '',
                        'lastName': driverData['lastName'] ?? '',
                        'certificateNumber': driverData['certificateNumber'] ?? '',
                        'gender': genderEnum ?? Enum$Gender.Male,
                        'address': driverData['address'] ?? '',
                        'email': driverData['email'] ?? '',
                        'password': password ?? ''
                      });
                      return;
                    }
                  
                  /*ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('El usuario no está en estado Offline.')),
                  );*/
                  return;

                } 
                 if (loginData != null &&
                    loginData['jwtToken'] != null &&
                    loginData['status'] == 'PendingApproval') {
                      print('DEBUG: Usuario en estado PendingApproval, redirigiendo a pantalla de espera');
                  widget.onLoadingStateUpdated(false);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => PendingApprovalScreen(),
                    ),
                  );
                  return;
                }
                
                else if (loginResult.hasException) {
                  widget.onLoadingStateUpdated(false);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Credenciales incorrectas.')),
                  );
                  return;
                }
                widget.onLoadingStateUpdated(false);
              } else {
                await widget.onContinue({
                  'firstName': '',
                  'lastName': '',
                  'certificateNumber': '',
                  'gender': null,
                  'address': '',
                  'email': email ?? '',
                  'password': password ?? ''
                });
              }
            },
            child: Text(S.of(context).action_continue),
          ),
        )
      ],
    );
  }

  
}
