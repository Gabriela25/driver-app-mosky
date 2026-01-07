import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/components/query_result_view.dart';
import 'package:client_shared/components/step_view.dart';
import 'package:flutter/material.dart';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'package:sms_firebase/register/pages/register_contact_details_view.dart';
import 'package:sms_firebase/register/pages/register_email_password_view.dart';
import 'package:sms_firebase/register/pages/register_phone_number_view.dart';
import 'package:sms_firebase/register/pages/register_ride_details_view.dart';
import 'package:sms_firebase/register/pages/register_upload_documents_view.dart';
import 'package:sms_firebase/register/pages/register_verification_code_view.dart';
import 'package:sms_firebase/register/get_driver_dynamic.dart';
import '../schema.gql.dart';

class RegisterView extends StatefulWidget {
  static const allowedStatuses = [
    Enum$DriverStatus.WaitingDocuments,
    Enum$DriverStatus.PendingApproval,
    Enum$DriverStatus.SoftReject
  ];
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  int activePageId = 0;
  PageController? pageController;
  String? verificationId;
  String? phoneNumber;
  bool isLoading = false;
  String? _pendingEmail;
  String? _pendingPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      const RidyBackButton(text: ""),
                      Center(child: Text(S.of(context).driver_register_title))
                    ],
                  ),
                  const SizedBox(height: 12),
                  WizardSteps(
                    items: [
                      WizardStepItem(
                          title: S.of(context).register_step_phone_number),
                      WizardStepItem(
                          title: S.of(context).register_step_verify_number),
                      WizardStepItem(
                          title: S.of(context).register_step_email_password),
                      WizardStepItem(
                          title: S.of(context).register_step_contact_details),
                      WizardStepItem(
                          title: S.of(context).register_step_ride_details),
                      /*WizardStepItem(
                          title: S.of(context).register_step_payout_details),*/
                      WizardStepItem(
                          title: S.of(context).register_step_upload_documents)
                    ],
                    activePageId: activePageId,
                  ),
                  const SizedBox(height: 8),
                  Builder(
                    builder: (context) {
                      final driverId = Hive.box('user').get('driverId');
                      print('DEBUG: Valor actual de driverId en Hive antes del FutureBuilder: $driverId');
                      pageController ??= PageController(initialPage: 0);
                      return Expanded(
                        child: PageView.builder(
                          controller: pageController,
                          itemCount: 6,
                          physics: const NeverScrollableScrollPhysics(),
                          onPageChanged: (value) => setState(() => activePageId = value),
                          itemBuilder: ((context, index) {
                            switch (index) {
                              case 0:
                                  return RegisterPhoneNumberView(
                                    key: const ValueKey('register_phone_number_view'),
                                    onCodeSent: (verificationId, phoneNumber) {
                                      this.verificationId = verificationId;
                                      this.phoneNumber = phoneNumber;
                                      pageController!.jumpToPage(1);
                                    },
                                    onLoggedIn: () {
                                      // Si el usuario ya está registrado, mostrar la pantalla de email y password
                                      pageController!.jumpToPage(2);
                                    },
                                    onLoadingStateUpdated: (loading) => setState(() => isLoading = loading),
                                  );
                              case 1:
                                return RegisterVerificationCodeView(
                                  key: const ValueKey('register_verification_code_view'),
                                  verificationCodeId: verificationId ?? '',
                                  phoneNumber: phoneNumber ?? '',
                                  onLoggedIn: () {
                                    pageController!.jumpToPage(2);
                                    setState(() {});
                                  },
                                  onLoadingStateUpdated: (loading) {
                                    print('DEBUG: onLoadingStateUpdated llamado en RegisterView, loading=$loading');
                                    setState(() => isLoading = loading);
                                  },
                                );
                              case 2:
                                return RegisterEmailPasswordView(
                                  key: const ValueKey('register_email_password_view'),
                                  email: null,
                                  password: null,
                                  onContinue: (String? email, String? password) async {
                                    setState(() {
                                      _pendingEmail = email;
                                      _pendingPassword = password;
                                    });
                                    pageController!.jumpToPage(3);
                                  },
                                  onLoadingStateUpdated: (loading) {
                                    print('DEBUG: onLoadingStateUpdated llamado en RegisterView, loading=$loading');
                                    setState(() => isLoading = loading);
                                  },
                                );
                              case 3:
                                return RegisterContactDetailsView(
                                key: const ValueKey('register_contact_details_view'),
                                firstName: null,
                                lastName: null,
                                certificateNumber: null,
                                gender: null,
                                address: null,
                                email: _pendingEmail ?? '',
                                password: _pendingPassword ?? '',
                                onContinue: () {
                                  pageController!.jumpToPage(4);
                                },
                                onLoadingStateUpdated: (loading) {
                                  print('DEBUG: onLoadingStateUpdated llamado en RegisterView, loading=$loading');
                                  setState(() => isLoading = loading);
                                },
                              );
                              case 4:
                                return RegisterRideDetailsView(
                                  key: const ValueKey('register_ride_details_view'),
                                  onContinue: () => pageController!.jumpToPage(5),
                                  onLoadingStateUpdated: (loading) {
                                    print('DEBUG: onLoadingStateUpdated llamado en RegisterView, loading=$loading');
                                    setState(() => isLoading = loading);
                                  },
                                );
                              case 5:
                                return RegisterUploadDocumentsView(
                                  key: const ValueKey('register_upload_documents_view'),
                                  driverId: '',
                                  documents: [],
                                  profilePicture: null,
                                  onUploaded: () => setState(() {}),
                                  onLoadingStateUpdated: (loading) {
                                    print('DEBUG: onLoadingStateUpdated llamado en RegisterView, loading=$loading');
                                    setState(() => isLoading = loading);
                                  },
                                );
                              default:
                                return const Text("Unsupported state");
                            }
                          }),
                        ),
                      );
                    },
                  )
                ],
              ),
              if (isLoading)
                Positioned.fill(
                    child: Container(
                  color: Colors.white60,
                  child: QueryResultLoadingView(
                      loadingText: S.of(context).loading),
                ))
            ],
          )),
    );
  }
}
