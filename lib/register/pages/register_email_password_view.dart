import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';


class RegisterEmailPasswordView extends StatefulWidget {
  final String? email;
  final String? password;
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;
  const RegisterEmailPasswordView({
    super.key,
    required this.email,
    required this.password,
    required this.onContinue,
    required this.onLoadingStateUpdated
  });

  @override
  State<RegisterEmailPasswordView> createState() => _RegisterEmailPasswordViewState();
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
                      validator: (value) => value?.isEmpty ?? true ? null : null,
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
                if (email != null && email!.isNotEmpty && password != null && password!.isNotEmpty) {
                  final loginQuery = '''
                    query LoginByEmailPassword(\$email: String!, \$password: String!) {
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
                  print('DEBUG: loginResult: \\${loginResult}');
                  final loginData = loginResult.data?['loginByEmailPassword'];
                  if (loginData != null && loginData['jwtToken'] != null && loginData['status'] == 'Offline') {
                    Hive.box('user').put('jwt', loginData['jwtToken']);
                    widget.onLoadingStateUpdated(false);
                    widget.onContinue();
                    return;
                  } else if (loginData != null && loginData['jwtToken'] != null) {
                    widget.onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('El usuario no está en estado Offline.')),
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
                widget.onContinue();
              } catch (e) {
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

