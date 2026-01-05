import 'package:client_shared/components/ridy_banner.dart';
import 'dart:convert';
import 'package:client_shared/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pinput/pinput.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'dart:convert';



import '../../query_result_view.dart';
import '../register.graphql.dart';

class RegisterVerificationCodeView extends StatefulWidget {
  final String verificationCodeId;
  final String phoneNumber;
  final Function() onLoggedIn;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterVerificationCodeView(
      {super.key,
      required this.verificationCodeId,
      required this.phoneNumber,
      required this.onLoggedIn,
      required this.onLoadingStateUpdated});

  @override
  State<RegisterVerificationCodeView> createState() =>
      _RegisterVerificationCodeViewState();
}

class _RegisterVerificationCodeViewState
    extends State<RegisterVerificationCodeView> {
  final FocusNode focusNode = FocusNode();
  // No FormKey aquí, pero si agregas un Form, usa este patrón:
  // late final GlobalKey<FormState> _formKey;
  // @override
  // void initState() {
  //   super.initState();
  //   _formKey = GlobalKey<FormState>();
  // }

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).register_verify_code_title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          S.of(context).register_verify_code_subtitle(widget.phoneNumber),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 24),
        Pinput(
          focusNode: focusNode,
          length: 6,
          onCompleted: (value) async {
            widget.onLoadingStateUpdated(true);
            try {
              final PhoneAuthCredential credential =
                  PhoneAuthProvider.credential(
                      verificationId: widget.verificationCodeId,
                      smsCode: value);
              await FirebaseAuth.instance.signInWithCredential(credential);
              widget.onLoadingStateUpdated(false);
              widget.onLoggedIn();
            } on FirebaseAuthException catch (e) {
              widget.onLoadingStateUpdated(false);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: RidyBanner(
                e.message ?? '',
                type: BannerType.error,
              )));
            }
          },
        ),
        if (demoMode)
          Mutation$SkipVerification$Widget(
              options: WidgetOptions$Mutation$SkipVerification(
                  onCompleted: (result, parsedData) {
                    print('Skip verification completed');
                print(parsedData);
                print(result);

                widget.onLoadingStateUpdated(true);
                final jwt = parsedData?.skipVerification.jwtToken;
                if (jwt == null) return;
                Hive.box('user').put('jwt', jwt);
                widget.onLoadingStateUpdated(false);
                widget.onLoggedIn();
              }, onError: (error) {
                print('Error 2: $error');
                widget.onLoadingStateUpdated(false);
                showOperationErrorMessage(context, error);
              }),
              builder: (runMutation, result) {
                return TextButton(
                    onPressed: () {
                      print('Skip verification');
                      widget.onLoadingStateUpdated(true);
                      runMutation(Variables$Mutation$SkipVerification(
                          mobileNumber: widget.phoneNumber));
                    },
                    child: Text(S.of(context).skipVerificationDemoOnly));
              }),
        const Spacer(),
      ],
    );
  }
}
