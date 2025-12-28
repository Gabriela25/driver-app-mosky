import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/config.dart';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_codes/country_codes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';



import 'package:url_launcher/url_launcher.dart';

import '../../query_result_view.dart';
import '../../schema.gql.dart';
import '../register.graphql.dart';

class RegisterEmailPasswordView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email = "";
  String? password = "";
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;

   RegisterEmailPasswordView(
      {super.key,
        required this.email,
        required this.password,
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

                    TextFormField(
                      initialValue: email,
                      onChanged: (value) => email = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).email),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: password,
                      onSaved: (value) => password = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: ('password')),
                    ),
                    const SizedBox(height: 8),


                  ]),
            ),
          ),
        ),
        Mutation$UpdateProfile$Widget(
            options: WidgetOptions$Mutation$UpdateProfile(
              onCompleted: (result, parsedData) {
                onLoadingStateUpdated(false);
                onContinue();
              },
              onError: (error) => {
                print('Error en la pagina de registro: $error'),
                showOperationErrorMessage(context, error)},
            ),
            builder: (runMutation, result) {
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(

                    onPressed: () async {
                      bool? isValid = _formKey.currentState?.validate();
                      if (isValid != true) return;
                      _formKey.currentState?.save();
                      onLoadingStateUpdated(true);
                      runMutation(Variables$Mutation$UpdateProfile(
                          input: Input$UpdateDriverInput(
                              email: email,
                              password: password,
                              )));
                    },
                    child: Text(S.of(context).action_continue

                    )),
              );
            })
      ],

    );
  }
}


