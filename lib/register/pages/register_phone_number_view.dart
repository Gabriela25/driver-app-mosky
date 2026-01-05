import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme-ride.dart';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_codes/country_codes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'register_email_password_view.dart';



import 'package:url_launcher/url_launcher.dart';

import '../../query_result_view.dart';
import '../register.graphql.dart';

class RegisterPhoneNumberView extends StatefulWidget {
  final Function(String verificationId, String phoneNumber) onCodeSent;
  final Function() onLoggedIn;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterPhoneNumberView(
      {super.key,
      required this.onCodeSent,
      required this.onLoggedIn,
      required this.onLoadingStateUpdated});

  @override
  State<RegisterPhoneNumberView> createState() =>
      _RegisterPhoneNumberViewState();
}

class _RegisterPhoneNumberViewState extends State<RegisterPhoneNumberView> {
  bool agreedToTerms = false;
  String countryCode = !kIsWeb
      ? (CountryCodes.detailsForLocale().alpha2Code ?? defaultCountryCode)
      : defaultCountryCode;
  String? phoneNumber;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  Future<Map<String, dynamic>?> checkPhoneApproved(String phone) async {
    print('Checking phone approval for: $phone');
    final client = GraphQLProvider.of(context).value;
    final String query = '''
      query CheckPhone(
       \$phone: String!
      ) {
        driverByPhone(phone: \$phone) {
          id
          status
          email
        }
      }
    ''';

    final result = await client.query(QueryOptions(
      document: gql(query),
      variables: {'phone': phone},
      fetchPolicy: FetchPolicy.networkOnly,
    ));
    print(  'GraphQL result: ' + result.toString());
    if (result.hasException) {
      print('GraphQL error: ' + result.exception.toString());
      widget.onLoadingStateUpdated(false);
      final snackBar = SnackBar(
        content: RidyBanner(
          result.exception.toString(),
          type: BannerType.error,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return null;
    }
    return result.data?['driverByPhone'];
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).register_number_title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).register_number_subtitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 24),
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: CustomTheme.neutralColors.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: FormField<String?>(
                initialValue: countryCode,
                onSaved: (value) => countryCode = value ?? countryCode,
                builder: (state) => CountryCodePicker(
                  boxDecoration: BoxDecoration(
                      color: CustomTheme.neutralColors.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  initialSelection: countryCode,
                  onChanged: (value) => state.didChange(value.code),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Flexible(
              child: TextFormField(
                initialValue: phoneNumber,
                onSaved: (value) => phoneNumber = value,
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  isDense: true,
                  labelText: S.of(context).cell_number,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).phone_number_empty;
                  }
                  return null;
                },
              ),
            ),
          ]),
          if (loginTermsAndConditionsUrl.isNotEmpty)
            RegistrationPhoneNumberTermsCheckbox(
              agreedToTerms: agreedToTerms,
              onAgreedChanged: (value) => setState(() => agreedToTerms = value),
            ),
          const Spacer(),
          if (demoMode)
            Mutation$SkipVerification$Widget(
                options: WidgetOptions$Mutation$SkipVerification(
                    onCompleted: (result, parsedData) {
                  widget.onLoadingStateUpdated(true);
                  final jwt = parsedData?.skipVerification.jwtToken;
                  if (jwt == null) return;
                  Hive.box('user').put('jwt', jwt);
                  widget.onLoadingStateUpdated(false);
                  widget.onLoggedIn();
                }, onError: (error) {
                  widget.onLoadingStateUpdated(false);
                  showOperationErrorMessage(context, error);
                }),
                builder: (runMutation, result) {
                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          _formKey.currentState!.save();
                          final String dialCode =
                              CountryCode.fromCountryCode(countryCode)
                                  .dialCode!;
                          widget.onLoadingStateUpdated(true);
                          runMutation(Variables$Mutation$SkipVerification(
                              mobileNumber: dialCode + phoneNumber!));
                        },
                        child: Text(
                          S.of(context).skipVerificationDemoOnly
                        )),
                  );
                }),
          if (!demoMode)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll<Color>(Color(0xFF3CD7AC)),
                ),
                onPressed: ((loginTermsAndConditionsUrl.isNotEmpty &&
                        !agreedToTerms))
                    ? null
                    : () async {
                        if (!_formKey.currentState!.validate()) return;
                        _formKey.currentState?.save();
                        final String dialCode =
                            CountryCode.fromCountryCode(countryCode)
                                .dialCode!;
                        final String fullPhoneNumber =
                            dialCode + phoneNumber!;
                        widget.onLoadingStateUpdated(true);
                        final driver = await checkPhoneApproved(fullPhoneNumber);
                        if (driver != null && driver['status'] == 'Offline') {
                          // Si el número está registrado, solo login
                          widget.onLoadingStateUpdated(false);
                          widget.onLoggedIn();
                        } else {
                          // Si no está registrado, pedir código y luego email/password/contacto
                          if (kIsWeb) {
                            final authResult = await FirebaseAuth.instance
                                .signInWithPhoneNumber(fullPhoneNumber);
                            widget.onCodeSent(
                                authResult.verificationId, fullPhoneNumber);
                          } else {
                            FirebaseAuth.instance.verifyPhoneNumber(
                                phoneNumber: fullPhoneNumber,
                                timeout: const Duration(minutes: 2),
                                verificationCompleted: (PhoneAuthCredential
                                    phoneAuthCredential) async {
                                  final UserCredential cr =
                                      await FirebaseAuth.instance
                                          .signInWithCredential(
                                              phoneAuthCredential);
                                  final String firebaseToken =
                                      (await cr.user!.getIdToken())!;
                                  // Aquí podrías hacer login directo si lo deseas
                                },
                                verificationFailed:
                                    (FirebaseAuthException error) {
                                  widget.onLoadingStateUpdated(false);
                                  final snackBar = SnackBar(
                                      content: RidyBanner(
                                          error.message ??
                                              S
                                                  .of(context)
                                                  .message_unknown_error,
                                          type: BannerType.error));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                                codeSent: (String verificationId,
                                    int? forceResendingToken) {
                                  widget.onLoadingStateUpdated(false);
                                  widget.onCodeSent(
                                      verificationId, fullPhoneNumber);
                                },
                                codeAutoRetrievalTimeout:
                                    (String verificationId) {});
                          }
                        }
                      },
                child: Text(
                  S.of(context).action_continue,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

class RegistrationPhoneNumberTermsCheckbox extends StatelessWidget {
  final bool agreedToTerms;
  final Function(bool value) onAgreedChanged;

  const RegistrationPhoneNumberTermsCheckbox(
      {super.key, required this.agreedToTerms, required this.onAgreedChanged});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: agreedToTerms,
            onChanged: (value) => onAgreedChanged(value ?? false)),
        Flexible(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                style: const TextStyle(color: Colors.black),
                text: S.of(context).terms_and_condition_first_part),
            TextSpan(
                style: const TextStyle(color: Colors.blue),
                text: S.of(context).terms_and_conditions_clickable_part,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(Uri.parse(loginTermsAndConditionsUrl));
                  })
          ])),
        ),
      ],
    );
  }
}
