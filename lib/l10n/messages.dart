import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'messages_am.dart';
import 'messages_ar.dart';
import 'messages_bn.dart';
import 'messages_de.dart';
import 'messages_en.dart';
import 'messages_es.dart';
import 'messages_fa.dart';
import 'messages_fr.dart';
import 'messages_hi.dart';
import 'messages_hy.dart';
import 'messages_id.dart';
import 'messages_it.dart';
import 'messages_ja.dart';
import 'messages_ko.dart';
import 'messages_om.dart';
import 'messages_pt.dart';
import 'messages_ro.dart';
import 'messages_ru.dart';
import 'messages_sv.dart';
import 'messages_ur.dart';
import 'messages_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/messages.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('om'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('ur'),
    Locale('zh')
  ];

  /// No description provided for @statusOffline.
  ///
  /// In es, this message translates to:
  /// **'Ir en línea'**
  String get statusOffline;

  /// No description provided for @statusOnline.
  ///
  /// In es, this message translates to:
  /// **'Salir de línea'**
  String get statusOnline;

  /// No description provided for @message_notification_permission_title.
  ///
  /// In es, this message translates to:
  /// **'Permiso de notificación'**
  String get message_notification_permission_title;

  /// No description provided for @message_notification_permission_denined_message.
  ///
  /// In es, this message translates to:
  /// **'El permiso de notificación fue denegado anteriormente. Para recibir notificaciones de nuevos pedidos, puede habilitar el permiso desde la configuración de la aplicación.'**
  String get message_notification_permission_denined_message;

  /// No description provided for @action_ok.
  ///
  /// In es, this message translates to:
  /// **'OK'**
  String get action_ok;

  /// No description provided for @menu_logout.
  ///
  /// In es, this message translates to:
  /// **'Cerrar sesión'**
  String get menu_logout;

  /// No description provided for @menu_about.
  ///
  /// In es, this message translates to:
  /// **'Sobre'**
  String get menu_about;

  /// No description provided for @menu_wallet.
  ///
  /// In es, this message translates to:
  /// **'Cartera'**
  String get menu_wallet;

  /// No description provided for @menu_trip_history.
  ///
  /// In es, this message translates to:
  /// **'Historial de viajes'**
  String get menu_trip_history;

  /// No description provided for @menu_announcements.
  ///
  /// In es, this message translates to:
  /// **'Anuncios'**
  String get menu_announcements;

  /// No description provided for @message_unknown_error.
  ///
  /// In es, this message translates to:
  /// **'Error desconocido'**
  String get message_unknown_error;

  /// No description provided for @title_success.
  ///
  /// In es, this message translates to:
  /// **'Éxito'**
  String get title_success;

  /// No description provided for @driver_register_profile_submitted_message.
  ///
  /// In es, this message translates to:
  /// **'Su perfil se envía para la aprobación del administrador. Puede volver a consultar más tarde para ver el estado de su envío.'**
  String get driver_register_profile_submitted_message;

  /// No description provided for @driver_registration_approved_demo_mode.
  ///
  /// In es, this message translates to:
  /// **'Normalmente, en esta etapa, el administrador necesitaría aprobar el envío del controlador desde el Panel de administración. Sin embargo, por el bien de la demostración, su perfil se aprueba automáticamente ahora y está listo para usar.'**
  String get driver_registration_approved_demo_mode;

  /// No description provided for @title_important.
  ///
  /// In es, this message translates to:
  /// **'¡IMPORTANTE!'**
  String get title_important;

  /// No description provided for @cell_number.
  ///
  /// In es, this message translates to:
  /// **'Numero de celular'**
  String get cell_number;

  /// No description provided for @phone_number_empty.
  ///
  /// In es, this message translates to:
  /// **'Por favor ingrese el número de teléfono'**
  String get phone_number_empty;

  /// No description provided for @driver_registration_step_verify_number_title.
  ///
  /// In es, this message translates to:
  /// **'Verificar número'**
  String get driver_registration_step_verify_number_title;

  /// No description provided for @driver_register_verification_code_textfield_hint.
  ///
  /// In es, this message translates to:
  /// **'Código de verificación'**
  String get driver_register_verification_code_textfield_hint;

  /// No description provided for @driver_register_contact_details_title.
  ///
  /// In es, this message translates to:
  /// **'Detalles de contacto'**
  String get driver_register_contact_details_title;

  /// No description provided for @firstname.
  ///
  /// In es, this message translates to:
  /// **'Primer nombre'**
  String get firstname;

  /// No description provided for @lastname.
  ///
  /// In es, this message translates to:
  /// **'Apellido'**
  String get lastname;

  /// No description provided for @email.
  ///
  /// In es, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @certificate_number.
  ///
  /// In es, this message translates to:
  /// **'Número de licencia'**
  String get certificate_number;

  /// No description provided for @gender.
  ///
  /// In es, this message translates to:
  /// **'Género'**
  String get gender;

  /// No description provided for @gender_male.
  ///
  /// In es, this message translates to:
  /// **'Masculino'**
  String get gender_male;

  /// No description provided for @gender_female.
  ///
  /// In es, this message translates to:
  /// **'Femenino'**
  String get gender_female;

  /// No description provided for @address.
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get address;

  /// No description provided for @driver_register_ride_details_step_title.
  ///
  /// In es, this message translates to:
  /// **'Detalles del viaje'**
  String get driver_register_ride_details_step_title;

  /// No description provided for @plate_number.
  ///
  /// In es, this message translates to:
  /// **'Número de placa'**
  String get plate_number;

  /// No description provided for @car_production_year.
  ///
  /// In es, this message translates to:
  /// **'Año del coche'**
  String get car_production_year;

  /// No description provided for @car_model.
  ///
  /// In es, this message translates to:
  /// **'Modelo del coche'**
  String get car_model;

  /// No description provided for @car_color.
  ///
  /// In es, this message translates to:
  /// **'Color del coche'**
  String get car_color;

  /// No description provided for @driver_register_step_payout_details_title.
  ///
  /// In es, this message translates to:
  /// **'Detalles de pago'**
  String get driver_register_step_payout_details_title;

  /// No description provided for @bank_name.
  ///
  /// In es, this message translates to:
  /// **'Nombre del banco'**
  String get bank_name;

  /// No description provided for @account_number.
  ///
  /// In es, this message translates to:
  /// **'Número de cuenta'**
  String get account_number;

  /// No description provided for @bank_swift.
  ///
  /// In es, this message translates to:
  /// **'banco rápido'**
  String get bank_swift;

  /// No description provided for @bankRoutingNumber.
  ///
  /// In es, this message translates to:
  /// **'Número de ruta bancaria'**
  String get bankRoutingNumber;

  /// No description provided for @driver_register_step_documents_title.
  ///
  /// In es, this message translates to:
  /// **'Documentos'**
  String get driver_register_step_documents_title;

  /// No description provided for @driver_register_step_documents_heading.
  ///
  /// In es, this message translates to:
  /// **'Para verificar los documentos anteriores, requerimos que se carguen los siguientes documentos'**
  String get driver_register_step_documents_heading;

  /// No description provided for @driver_register_document_first.
  ///
  /// In es, this message translates to:
  /// **'1-identificación'**
  String get driver_register_document_first;

  /// No description provided for @driver_register_document_second.
  ///
  /// In es, this message translates to:
  /// **'2-Licencia de conducir'**
  String get driver_register_document_second;

  /// No description provided for @driver_register_document_third.
  ///
  /// In es, this message translates to:
  /// **'Documento de propiedad de 3-Ride'**
  String get driver_register_document_third;

  /// No description provided for @action_upload_document.
  ///
  /// In es, this message translates to:
  /// **'Subir documento'**
  String get action_upload_document;

  /// No description provided for @trip_history_empty_state.
  ///
  /// In es, this message translates to:
  /// **'No se ha registrado ningún pedido anterior.'**
  String get trip_history_empty_state;

  /// No description provided for @wallet_empty_state_message.
  ///
  /// In es, this message translates to:
  /// **'Sin antecedentes registrados.'**
  String get wallet_empty_state_message;

  /// No description provided for @enum_unknown.
  ///
  /// In es, this message translates to:
  /// **'Desconocido'**
  String get enum_unknown;

  /// No description provided for @top_up_sheet_pay_button.
  ///
  /// In es, this message translates to:
  /// **'Pagar'**
  String get top_up_sheet_pay_button;

  /// No description provided for @loading.
  ///
  /// In es, this message translates to:
  /// **'CARGANDO'**
  String get loading;

  /// No description provided for @available_order_action_accept.
  ///
  /// In es, this message translates to:
  /// **'Aceptar pedido'**
  String get available_order_action_accept;

  /// No description provided for @order_status_action_received_cash.
  ///
  /// In es, this message translates to:
  /// **'Pago en efectivo recibido'**
  String get order_status_action_received_cash;

  /// No description provided for @action_cancel.
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get action_cancel;

  /// No description provided for @order_status_action_navigate.
  ///
  /// In es, this message translates to:
  /// **'Navegar'**
  String get order_status_action_navigate;

  /// No description provided for @order_status_action_arrived.
  ///
  /// In es, this message translates to:
  /// **'Llegué'**
  String get order_status_action_arrived;

  /// No description provided for @order_status_action_start.
  ///
  /// In es, this message translates to:
  /// **'Iniciar viaje'**
  String get order_status_action_start;

  /// No description provided for @order_status_action_finished.
  ///
  /// In es, this message translates to:
  /// **'Finalizar'**
  String get order_status_action_finished;

  /// No description provided for @message_cant_open_url.
  ///
  /// In es, this message translates to:
  /// **'El comando no es compatible'**
  String get message_cant_open_url;

  /// No description provided for @enum_driver_recharge_type_bank_transfer.
  ///
  /// In es, this message translates to:
  /// **'Transferencia bancaria'**
  String get enum_driver_recharge_type_bank_transfer;

  /// No description provided for @enum_driver_recharge_type_gift.
  ///
  /// In es, this message translates to:
  /// **'Regalo'**
  String get enum_driver_recharge_type_gift;

  /// No description provided for @enum_driver_recharge_type_in_app_payment.
  ///
  /// In es, this message translates to:
  /// **'Pago en la aplicación'**
  String get enum_driver_recharge_type_in_app_payment;

  /// No description provided for @enum_driver_recharge_transaction_type_order_fee.
  ///
  /// In es, this message translates to:
  /// **'Tarifa de pedido'**
  String get enum_driver_recharge_transaction_type_order_fee;

  /// No description provided for @enum_driver_deduct_transaction_type_withdraw.
  ///
  /// In es, this message translates to:
  /// **'Retirar'**
  String get enum_driver_deduct_transaction_type_withdraw;

  /// No description provided for @enum_driver_deduct_transaction_type_correction.
  ///
  /// In es, this message translates to:
  /// **'Corrección'**
  String get enum_driver_deduct_transaction_type_correction;

  /// No description provided for @enum_driver_deduct_transaction_type_commission.
  ///
  /// In es, this message translates to:
  /// **'Comisión'**
  String get enum_driver_deduct_transaction_type_commission;

  /// No description provided for @copyright_notice.
  ///
  /// In es, this message translates to:
  /// **'Copyright © {company}, Todos los derechos reservados.'**
  String copyright_notice(Object company);

  /// No description provided for @wallet_activities_heading.
  ///
  /// In es, this message translates to:
  /// **'Actividades'**
  String get wallet_activities_heading;

  /// No description provided for @form_required_field_error.
  ///
  /// In es, this message translates to:
  /// **'Campo requerido'**
  String get form_required_field_error;

  /// No description provided for @button_report_issue.
  ///
  /// In es, this message translates to:
  /// **'Reportar un problema'**
  String get button_report_issue;

  /// No description provided for @issue_submit_title.
  ///
  /// In es, this message translates to:
  /// **'Reportar un problema'**
  String get issue_submit_title;

  /// No description provided for @issue_subject_placeholder.
  ///
  /// In es, this message translates to:
  /// **'Tema'**
  String get issue_subject_placeholder;

  /// No description provided for @error_field_cant_be_empty.
  ///
  /// In es, this message translates to:
  /// **'No puede estar vacío'**
  String get error_field_cant_be_empty;

  /// No description provided for @issue_description_placeholder.
  ///
  /// In es, this message translates to:
  /// **'Descripción'**
  String get issue_description_placeholder;

  /// No description provided for @complaint_submit_success_message.
  ///
  /// In es, this message translates to:
  /// **'Se presenta denuncia. Espere un contacto de nuestro representante de soporte sobre su consulta.'**
  String get complaint_submit_success_message;

  /// No description provided for @menu_earnings.
  ///
  /// In es, this message translates to:
  /// **'Ganancias'**
  String get menu_earnings;

  /// No description provided for @status_offline_description.
  ///
  /// In es, this message translates to:
  /// **'Conéctese en línea para ver las solicitudes'**
  String get status_offline_description;

  /// No description provided for @status_online_description.
  ///
  /// In es, this message translates to:
  /// **'Buscando paseo'**
  String get status_online_description;

  /// No description provided for @order_status_card_title_driver_accepted.
  ///
  /// In es, this message translates to:
  /// **'El pasajero será notificado una vez que toque Llegado'**
  String get order_status_card_title_driver_accepted;

  /// No description provided for @order_status_card_title_arrived.
  ///
  /// In es, this message translates to:
  /// **'El ciclista ha sido notificado'**
  String get order_status_card_title_arrived;

  /// No description provided for @order_status_card_title_started.
  ///
  /// In es, this message translates to:
  /// **'Rumbo al destino'**
  String get order_status_card_title_started;

  /// No description provided for @navigation_dialog_title.
  ///
  /// In es, this message translates to:
  /// **'Elija una aplicación para navegar'**
  String get navigation_dialog_title;

  /// No description provided for @action_ride_options.
  ///
  /// In es, this message translates to:
  /// **'Opciones de viaje'**
  String get action_ride_options;

  /// No description provided for @rider_expected_time_past.
  ///
  /// In es, this message translates to:
  /// **'Rider te esperaba hace {minutes}'**
  String rider_expected_time_past(Object minutes);

  /// No description provided for @rider_expected_time_future.
  ///
  /// In es, this message translates to:
  /// **'Rider te espera en {minutes}'**
  String rider_expected_time_future(Object minutes);

  /// No description provided for @order_payment_status_unpaid.
  ///
  /// In es, this message translates to:
  /// **'El viaje aún no se ha pagado'**
  String get order_payment_status_unpaid;

  /// No description provided for @order_payment_status_paid.
  ///
  /// In es, this message translates to:
  /// **'Jinete ha sido pagado'**
  String get order_payment_status_paid;

  /// No description provided for @action_ride_preferences.
  ///
  /// In es, this message translates to:
  /// **'Preferencias del pasajero'**
  String get action_ride_preferences;

  /// No description provided for @navigation_dialog_title_pickup_point.
  ///
  /// In es, this message translates to:
  /// **'Navegar al punto de recogida'**
  String get navigation_dialog_title_pickup_point;

  /// No description provided for @navigation_title_destination_point.
  ///
  /// In es, this message translates to:
  /// **'Navegar al punto de entrega'**
  String get navigation_title_destination_point;

  /// No description provided for @rider_options_dialog_title.
  ///
  /// In es, this message translates to:
  /// **'Opciones de viaje'**
  String get rider_options_dialog_title;

  /// No description provided for @action_cancel_ride.
  ///
  /// In es, this message translates to:
  /// **'Cancelar viaje'**
  String get action_cancel_ride;

  /// No description provided for @invoice_dialog_body.
  ///
  /// In es, this message translates to:
  /// **'También puede recibir efectivo en lugar de un pago en línea si usted y el escritor están dispuestos a hacerlo.'**
  String get invoice_dialog_body;

  /// No description provided for @invoice_dialog_heading.
  ///
  /// In es, this message translates to:
  /// **'Esperando el pago del pasajero'**
  String get invoice_dialog_heading;

  /// No description provided for @invoice_dialog_title.
  ///
  /// In es, this message translates to:
  /// **'Información de pago'**
  String get invoice_dialog_title;

  /// No description provided for @invoice_item_tip.
  ///
  /// In es, this message translates to:
  /// **'Consejo'**
  String get invoice_item_tip;

  /// No description provided for @invoice_item_subtotal.
  ///
  /// In es, this message translates to:
  /// **'Total parcial'**
  String get invoice_item_subtotal;

  /// No description provided for @add_credit_dialog_title.
  ///
  /// In es, this message translates to:
  /// **'Añadir crédito'**
  String get add_credit_dialog_title;

  /// No description provided for @add_credit_dialog_select_payment_method.
  ///
  /// In es, this message translates to:
  /// **'Seleccione el método de pago:'**
  String get add_credit_dialog_select_payment_method;

  /// No description provided for @add_credit_dialog_choose_amount.
  ///
  /// In es, this message translates to:
  /// **'Elija la cantidad'**
  String get add_credit_dialog_choose_amount;

  /// No description provided for @order_details_payment_method_title.
  ///
  /// In es, this message translates to:
  /// **'Método de pago'**
  String get order_details_payment_method_title;

  /// No description provided for @order_payment_method_cash.
  ///
  /// In es, this message translates to:
  /// **'Dinero'**
  String get order_payment_method_cash;

  /// No description provided for @order_payment_method_online.
  ///
  /// In es, this message translates to:
  /// **'En línea'**
  String get order_payment_method_online;

  /// No description provided for @order_details_trip_information_title.
  ///
  /// In es, this message translates to:
  /// **'Información del viaje'**
  String get order_details_trip_information_title;

  /// No description provided for @issue_submit_body.
  ///
  /// In es, this message translates to:
  /// **'Puede informar cualquier problema que haya tenido con su viaje. Le ayudaremos con el problema dentro de una llamada.'**
  String get issue_submit_body;

  /// No description provided for @announcements_empty_state_title.
  ///
  /// In es, this message translates to:
  /// **'¡Aún no hay anuncios!'**
  String get announcements_empty_state_title;

  /// No description provided for @announcements_empty_state_body.
  ///
  /// In es, this message translates to:
  /// **'Te avisaremos cuando lleguen nuevos anuncios.'**
  String get announcements_empty_state_body;

  /// No description provided for @empty_state_title_no_record.
  ///
  /// In es, this message translates to:
  /// **'¡Datos no encontrados!'**
  String get empty_state_title_no_record;

  /// No description provided for @earnings_empty_state_body.
  ///
  /// In es, this message translates to:
  /// **'Con los criterios establecidos anteriormente, no podemos encontrar ningún registro.'**
  String get earnings_empty_state_body;

  /// No description provided for @action_continue.
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get action_continue;

  /// No description provided for @terms_and_condition_first_part.
  ///
  /// In es, this message translates to:
  /// **'He leído y estoy de acuerdo con'**
  String get terms_and_condition_first_part;

  /// No description provided for @terms_and_conditions_clickable_part.
  ///
  /// In es, this message translates to:
  /// **'Términos y condiciones'**
  String get terms_and_conditions_clickable_part;

  /// No description provided for @onboarding_welcome.
  ///
  /// In es, this message translates to:
  /// **'Bienvenidos !'**
  String get onboarding_welcome;

  /// No description provided for @action_login_signup.
  ///
  /// In es, this message translates to:
  /// **'Iniciar sesión Registrarse'**
  String get action_login_signup;

  /// No description provided for @action_complete_registration.
  ///
  /// In es, this message translates to:
  /// **'Registro completo'**
  String get action_complete_registration;

  /// No description provided for @action_edit_submission.
  ///
  /// In es, this message translates to:
  /// **'Editar envío'**
  String get action_edit_submission;

  /// No description provided for @incomplete_registration_description.
  ///
  /// In es, this message translates to:
  /// **'Por favor complete su\n presentación de registro'**
  String get incomplete_registration_description;

  /// No description provided for @pending_review_registration_description.
  ///
  /// In es, this message translates to:
  /// **'Su envío está bajo revisión,\n Gracias por la paciencia.'**
  String get pending_review_registration_description;

  /// No description provided for @hard_reject_registration.
  ///
  /// In es, this message translates to:
  /// **'¡Su envío ha sido rechazado por completo!'**
  String get hard_reject_registration;

  /// No description provided for @soft_rejection_description.
  ///
  /// In es, this message translates to:
  /// **'Hay un problema con el envío.'**
  String get soft_rejection_description;

  /// No description provided for @action_confirm_and_continue.
  ///
  /// In es, this message translates to:
  /// **'Confirmar y continuar'**
  String get action_confirm_and_continue;

  /// No description provided for @ride_preferences_title.
  ///
  /// In es, this message translates to:
  /// **'Preferencias de viaje'**
  String get ride_preferences_title;

  /// No description provided for @action_back.
  ///
  /// In es, this message translates to:
  /// **'atrás'**
  String get action_back;

  /// No description provided for @title_logout.
  ///
  /// In es, this message translates to:
  /// **'Cerrar sesión'**
  String get title_logout;

  /// No description provided for @logout_dialog_body.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea cerrar sesión en la aplicación?'**
  String get logout_dialog_body;

  /// No description provided for @action_delete_account.
  ///
  /// In es, this message translates to:
  /// **'Borrar cuenta'**
  String get action_delete_account;

  /// No description provided for @dialog_account_deletion_title.
  ///
  /// In es, this message translates to:
  /// **'Eliminación de cuenta'**
  String get dialog_account_deletion_title;

  /// No description provided for @dialog_account_deletion_body.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea eliminar su cuenta? Puede iniciar sesión nuevamente dentro de los 30 días para restaurar la cuenta. Después de este período, sus datos se eliminan por completo, incluidos todos sus créditos restantes.'**
  String get dialog_account_deletion_body;

  /// No description provided for @wallet_card_title.
  ///
  /// In es, this message translates to:
  /// **'Billetera {appName}'**
  String wallet_card_title(Object appName);

  /// No description provided for @order_status_canceled.
  ///
  /// In es, this message translates to:
  /// **'Cancelado'**
  String get order_status_canceled;

  /// No description provided for @driver_register_title.
  ///
  /// In es, this message translates to:
  /// **'Registro de conductor'**
  String get driver_register_title;

  /// No description provided for @menu_profile.
  ///
  /// In es, this message translates to:
  /// **'Mi perfil'**
  String get menu_profile;

  /// No description provided for @profile_services_title.
  ///
  /// In es, this message translates to:
  /// **'Servicios:'**
  String get profile_services_title;

  /// No description provided for @profile_bank_information_title.
  ///
  /// In es, this message translates to:
  /// **'Información bancaria'**
  String get profile_bank_information_title;

  /// No description provided for @profile_vehicle_information_title.
  ///
  /// In es, this message translates to:
  /// **'Información del vehículo'**
  String get profile_vehicle_information_title;

  /// No description provided for @profile_distance_traveled.
  ///
  /// In es, this message translates to:
  /// **'Distancia viajada'**
  String get profile_distance_traveled;

  /// No description provided for @profile_total_trips.
  ///
  /// In es, this message translates to:
  /// **'Viajes totales'**
  String get profile_total_trips;

  /// No description provided for @profile_rating.
  ///
  /// In es, this message translates to:
  /// **'Clasificación'**
  String get profile_rating;

  /// No description provided for @register_number_title.
  ///
  /// In es, this message translates to:
  /// **'Ingrese su número telefónico'**
  String get register_number_title;

  /// No description provided for @register_number_subtitle.
  ///
  /// In es, this message translates to:
  /// **'Te enviaremos un código a tu número para continuar con el registro'**
  String get register_number_subtitle;

  String get register_email_password_title;
  
  String get register_email_password_subtitle;
  /// No description provided for @register_verify_code_title.
  ///
  /// In es, this message translates to:
  /// **'Introduzca el código'**
  String get register_verify_code_title;

  /// No description provided for @register_verify_code_subtitle.
  ///
  /// In es, this message translates to:
  /// **'Hemos enviado un código a {number}'**
  String register_verify_code_subtitle(Object number);

  /// No description provided for @register_contact_details_title.
  ///
  /// In es, this message translates to:
  /// **'Introduce tus datos de contacto'**
  String get register_contact_details_title;

  /// No description provided for @register_payout_details_title.
  ///
  /// In es, this message translates to:
  /// **'Ingrese los detalles de su pago'**
  String get register_payout_details_title;

  /// No description provided for @register_ride_details_title.
  ///
  /// In es, this message translates to:
  /// **'Ingrese los detalles de su viaje'**
  String get register_ride_details_title;

  /// No description provided for @register_profile_photo_title.
  ///
  /// In es, this message translates to:
  /// **'Subir foto de perfil'**
  String get register_profile_photo_title;

  /// No description provided for @register_profile_photo_subtitle.
  ///
  /// In es, this message translates to:
  /// **'Su cara debe ser reconocible en la imagen cargada'**
  String get register_profile_photo_subtitle;

  /// No description provided for @action_add_photo.
  ///
  /// In es, this message translates to:
  /// **'Añadir foto'**
  String get action_add_photo;

  /// No description provided for @register_upload_documents_title.
  ///
  /// In es, this message translates to:
  /// **'Subir documentos requeridos'**
  String get register_upload_documents_title;

  /// No description provided for @register_upload_documents_subtitle.
  ///
  /// In es, this message translates to:
  /// **'Para verificar su identidad y cumplir con las regulaciones, necesitaremos que cargue los siguientes documentos: 1.-Licencia de conducir frontal. 2.-Licencia de conducir posterior. 3.-Seguro del vehículo.'**
  String get register_upload_documents_subtitle;

  /// No description provided for @register_step_phone_number.
  ///
  /// In es, this message translates to:
  /// **'Numero de celular'**
  String get register_step_phone_number;

  /// No description provided for @register_step_verify_number.
  ///
  /// In es, this message translates to:
  /// **'Verificar número'**
  String get register_step_verify_number;

  /// No description provided for @register_step_contact_details.
  ///
  /// In es, this message translates to:
  /// **'Detalles de contacto'**
  String get register_step_email_password;

  String get register_step_contact_details;

  /// No description provided for @register_step_ride_details.
  ///
  /// In es, this message translates to:
  /// **'Detalles del viaje'**
  String get register_step_ride_details;

  /// No description provided for @register_step_payout_details.
  ///
  /// In es, this message translates to:
  /// **'Detalles de pago'**
  String get register_step_payout_details;

  /// No description provided for @register_step_upload_documents.
  ///
  /// In es, this message translates to:
  /// **'subir documentos'**
  String get register_step_upload_documents;

  /// No description provided for @profile_uploaded_documents_title.
  ///
  /// In es, this message translates to:
  /// **'Documentos subidos'**
  String get profile_uploaded_documents_title;

  /// No description provided for @error_cancel_not_allowed.
  ///
  /// In es, this message translates to:
  /// **'No se permite cancelar un viaje ya iniciado'**
  String get error_cancel_not_allowed;

  /// No description provided for @distanceMeters.
  ///
  /// In es, this message translates to:
  /// **'{distance} m'**
  String distanceMeters(String distance);

  /// No description provided for @distanceKm.
  ///
  /// In es, this message translates to:
  /// **'{distance} km'**
  String distanceKm(String distance);

  /// No description provided for @distanceFeet.
  ///
  /// In es, this message translates to:
  /// **'{distance} ft'**
  String distanceFeet(String distance);

  /// No description provided for @distanceMiles.
  ///
  /// In es, this message translates to:
  /// **'{distance} mi'**
  String distanceMiles(String distance);

  /// No description provided for @distanceAway.
  ///
  /// In es, this message translates to:
  /// **'{distance} away'**
  String distanceAway(String distance);

  /// No description provided for @settings.
  ///
  /// In es, this message translates to:
  /// **'Configuraciones'**
  String get settings;

  /// No description provided for @mapSettings.
  ///
  /// In es, this message translates to:
  /// **'Configuraciones del Mapa'**
  String get mapSettings;

  /// No description provided for @languageSettings.
  ///
  /// In es, this message translates to:
  /// **'Configuraciones de idioma'**
  String get languageSettings;

  /// No description provided for @orderStatusCardTitleMultipleDestinations.
  ///
  /// In es, this message translates to:
  /// **'Rumbo al destino de {destinationIndex}'**
  String orderStatusCardTitleMultipleDestinations(int destinationIndex);

  /// No description provided for @actionArrivedToDestination.
  ///
  /// In es, this message translates to:
  /// **'Llegó al destino de {destinationIndex}'**
  String actionArrivedToDestination(int destinationIndex);

  /// No description provided for @skipVerificationDemoOnly.
  ///
  /// In es, this message translates to:
  /// **'Saltar verificación (Solo para Demo)'**
  String get skipVerificationDemoOnly;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['am', 'ar', 'bn', 'de', 'en', 'es', 'fa', 'fr', 'hi', 'hy', 'id', 'it', 'ja', 'ko', 'om', 'pt', 'ro', 'ru', 'sv', 'ur', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;


}

S lookupS(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am': return SAm();
    case 'ar': return SAr();
    case 'bn': return SBn();
    case 'de': return SDe();
    case 'en': return SEn();
    case 'es': return SEs();
    case 'fa': return SFa();
    case 'fr': return SFr();
    case 'hi': return SHi();
    case 'hy': return SHy();
    case 'id': return SId();
    case 'it': return SIt();
    case 'ja': return SJa();
    case 'ko': return SKo();
    case 'om': return SOm();
    case 'pt': return SPt();
    case 'ro': return SRo();
    case 'ru': return SRu();
    case 'sv': return SSv();
    case 'ur': return SUr();
    case 'zh': return SZh();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
