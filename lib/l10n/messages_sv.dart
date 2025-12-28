import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class SSv extends S {
  SSv([String locale = 'sv']) : super(locale);

  @override
  String get statusOffline => 'Gå Online';

  @override
  String get statusOnline => 'Gå Offline';

  @override
  String get message_notification_permission_title => 'Notifikation Tillåtelse';

  @override
  String get message_notification_permission_denined_message => 'Notifikationer var ej godkända förr. För att få nya notifikationer kan du ge ditt godkännande under inställningar.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Logga ut';

  @override
  String get menu_about => 'Om';

  @override
  String get menu_wallet => 'Plånbok';

  @override
  String get menu_trip_history => 'Resor - Historia';

  @override
  String get menu_announcements => 'Meddelanden';

  @override
  String get message_unknown_error => 'Okänt fel';

  @override
  String get title_success => 'Klart';

  @override
  String get driver_register_profile_submitted_message => 'Din profil har skickats in för godkännande av admin. Du kan kolla din förfrågans status senare.';

  @override
  String get driver_registration_approved_demo_mode => 'Vanligtvis behöver en admin godkänna förarens ansökan via admin panelen. Men i detta fall med en demo kommer din profil automatiskt godkännas och bli tillgänglig.';

  @override
  String get title_important => 'VIKTIGT!';

  @override
  String get cell_number => 'Mobilnummer';

  @override
  String get phone_number_empty => 'Vad god ange mobilnumret';

  @override
  String get driver_registration_step_verify_number_title => 'Verifiera Nummer';

  @override
  String get driver_register_verification_code_textfield_hint => 'Verifieringskod';

  @override
  String get driver_register_contact_details_title => 'Kontakt Info';

  @override
  String get firstname => 'Förnamn';

  @override
  String get lastname => 'Efternamn';

  @override
  String get email => 'E-post';

  @override
  String get certificate_number => 'Certifikationsnummer';

  @override
  String get gender => 'Kön';

  @override
  String get gender_male => 'Man';

  @override
  String get gender_female => 'Kvinna';

  @override
  String get address => 'Adress';

  @override
  String get driver_register_ride_details_step_title => 'Reseinformation';

  @override
  String get plate_number => 'Registreringsskylt';

  @override
  String get car_production_year => 'Produktionsår';

  @override
  String get car_model => 'Bil Modell';

  @override
  String get car_color => 'Bil Färg';

  @override
  String get driver_register_step_payout_details_title => 'Betalningsinformation';

  @override
  String get bank_name => 'Banknamn';

  @override
  String get account_number => 'Kontonummer';

  @override
  String get bank_swift => 'Bank Swift';

  @override
  String get bankRoutingNumber => 'Bank Routing Nummer';

  @override
  String get driver_register_step_documents_title => 'Dokument';

  @override
  String get driver_register_step_documents_heading => 'För att verifiera ovan dokument behöver de laddas upp';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-Körkort';

  @override
  String get driver_register_document_third => '3-Resans handlingar';

  @override
  String get action_upload_document => 'Ladda upp dokument';

  @override
  String get trip_history_empty_state => 'Inga tidigare resor har registrerats.';

  @override
  String get wallet_empty_state_message => 'Ingen historik har registrerats';

  @override
  String get enum_unknown => 'Okänd';

  @override
  String get top_up_sheet_pay_button => 'Betala';

  @override
  String get loading => 'LADDAR';

  @override
  String get available_order_action_accept => 'Acceptera Förfrågan';

  @override
  String get order_status_action_received_cash => 'Kontantbetalning mottagen';

  @override
  String get action_cancel => 'Avbryt';

  @override
  String get order_status_action_navigate => 'Navigera';

  @override
  String get order_status_action_arrived => 'Ankommen';

  @override
  String get order_status_action_start => 'Börja Resan';

  @override
  String get order_status_action_finished => 'Slutför';

  @override
  String get message_cant_open_url => 'Kunde ej öppna';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Banköverföring';

  @override
  String get enum_driver_recharge_type_gift => 'Gåva';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'App Betalning';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Avgift';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Utdrag';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Korrigering';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Beställning';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, All rights reserved.';
  }

  @override
  String get wallet_activities_heading => 'Aktiviteter';

  @override
  String get form_required_field_error => 'Obligatoriskt fält';

  @override
  String get button_report_issue => 'Rapportera ett problem';

  @override
  String get issue_submit_title => 'Rapportera problem';

  @override
  String get issue_subject_placeholder => 'Ämne';

  @override
  String get error_field_cant_be_empty => 'Kan ej vara tom';

  @override
  String get issue_description_placeholder => 'Beskrivning';

  @override
  String get complaint_submit_success_message => 'Klagomålet har skickats. Var god vänta på att vår support kontaktar er.';

  @override
  String get menu_earnings => 'Intäkter';

  @override
  String get status_offline_description => 'Gå online för att se förfrågningar';

  @override
  String get status_online_description => 'Söker efter tur';

  @override
  String get order_status_card_title_driver_accepted => 'Kunden kommer bli notifierad när du klickar på Anlänt';

  @override
  String get order_status_card_title_arrived => 'Kunden har blivit notifierad';

  @override
  String get order_status_card_title_started => 'På väg till destination';

  @override
  String get navigation_dialog_title => 'Välj en app att navigera med';

  @override
  String get action_ride_options => 'Resealternativ';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Kunden förväntade dig för $minutes sen';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Kunden förväntar dig inom $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'Resan har ej betalats för än';

  @override
  String get order_payment_status_paid => 'Resan har betalats';

  @override
  String get action_ride_preferences => 'Kund Preferenser';

  @override
  String get navigation_dialog_title_pickup_point => 'Navigera till upphämtningsplats';

  @override
  String get navigation_title_destination_point => 'Navigera till avstigningsplats';

  @override
  String get rider_options_dialog_title => 'Resa - Alternativ';

  @override
  String get action_cancel_ride => 'Avbryt Resa';

  @override
  String get invoice_dialog_body => 'Du kan även mottaga kontant istället för online betalning om både du och skrivaren är villiga.';

  @override
  String get invoice_dialog_heading => 'Väntar på kundens betalning';

  @override
  String get invoice_dialog_title => 'Betalningsinformation';

  @override
  String get invoice_item_tip => 'Dricks';

  @override
  String get invoice_item_subtotal => 'Delsumma';

  @override
  String get add_credit_dialog_title => 'Lägg till Kredit';

  @override
  String get add_credit_dialog_select_payment_method => 'Välj Betalningsmetod';

  @override
  String get add_credit_dialog_choose_amount => 'Välj summa';

  @override
  String get order_details_payment_method_title => 'Betalningsmetod';

  @override
  String get order_payment_method_cash => 'Kontant';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Reseinformation';

  @override
  String get issue_submit_body => 'Du kan rapportera problem eller bekymmer med din resa. Vi hjälper dig med ett telefonsamtal.';

  @override
  String get announcements_empty_state_title => 'Inga meddelanden än!';

  @override
  String get announcements_empty_state_body => 'Vi kommer meddela dig när nyheter kommer.';

  @override
  String get empty_state_title_no_record => 'Ingen data funnen!';

  @override
  String get earnings_empty_state_body => 'Vi kunde inte hitta några resultat med kriterierna ovan.';

  @override
  String get action_continue => 'Fortsätt';

  @override
  String get terms_and_condition_first_part => 'Jag har läst och godkänner ';

  @override
  String get terms_and_conditions_clickable_part => 'Villkor';

  @override
  String get onboarding_welcome => 'Välkommen !';

  @override
  String get action_login_signup => 'Logga In / Skapa konto';

  @override
  String get action_complete_registration => 'Slutför registrering';

  @override
  String get action_edit_submission => 'Redigera';

  @override
  String get incomplete_registration_description => 'Var god komplettera din \n registrering';

  @override
  String get pending_review_registration_description => 'Din registrering granskas, \n Tack för ditt tålamod.';

  @override
  String get hard_reject_registration => 'Din registrering har blivit avvisad.';

  @override
  String get soft_rejection_description => 'Ett problem uppstod med registreringen';

  @override
  String get action_confirm_and_continue => 'Bekräfta & Fortsätt';

  @override
  String get ride_preferences_title => 'Resa - Preferenser';

  @override
  String get action_back => 'Tillbaka';

  @override
  String get title_logout => 'Logga ut';

  @override
  String get logout_dialog_body => 'Är du säker att du vill logga ut från appen?';

  @override
  String get action_delete_account => 'Radera Konto';

  @override
  String get dialog_account_deletion_title => 'Konto Radering';

  @override
  String get dialog_account_deletion_body => 'Är du säker att du vill radera ditt konto? Du kan logga in igen inom 30 dagar för att återställa kontot. Efter denna period, tar vi helt bort din data, inklusive återstående kredit.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Plånbok';
  }

  @override
  String get order_status_canceled => 'Avbruten';

  @override
  String get driver_register_title => 'Förarregistrering';

  @override
  String get menu_profile => 'Min profil';

  @override
  String get profile_services_title => 'Tjänster:';

  @override
  String get profile_bank_information_title => 'Bankinformation';

  @override
  String get profile_vehicle_information_title => 'Fordonsinformation';

  @override
  String get profile_distance_traveled => 'Total distans';

  @override
  String get profile_total_trips => 'Totalt antal resor';

  @override
  String get profile_rating => 'Betygsättning';

  @override
  String get register_number_title => 'Ange ditt telefonnummer';

  @override
  String get register_number_subtitle => 'Vi kommer skicka en registrerings-kod till ditt nummer';

  @override
  String get register_verify_code_title => 'Ange kod';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Vi har skickat kod till $number';
  }

  @override
  String get register_contact_details_title => 'Ange dina kontaktuppgifter';

  @override
  String get register_payout_details_title => 'Ange dina betalningsinformation';

  @override
  String get register_ride_details_title => 'Ange dina förarinformation';

  @override
  String get register_profile_photo_title => 'Ladda upp Profil Foto';

  @override
  String get register_profile_photo_subtitle => 'Ditt ansikte ska vara igenkännligt i fotot';

  @override
  String get action_add_photo => 'Lägg till foto';

  @override
  String get register_upload_documents_title => 'Ladda upp obligatiriska dokument';

  @override
  String get register_upload_documents_subtitle => 'För att verifiera din identitet och följa regelverket behöver du ladda upp nedanstående dokument: \n1 - Foto ID\n2 - Körkort\n3 - Registreringsbevis';

  @override
  String get register_step_phone_number => 'Mobilnummer';

  @override
  String get register_step_verify_number => 'Verifiera Nummer';

  @override
  String get register_step_contact_details => 'Kontaktuppgifter';

  @override
  String get register_step_ride_details => 'Reseinformation';

  @override
  String get register_step_payout_details => 'Betalningsinformation';

  @override
  String get register_step_upload_documents => 'Ladda upp dokument';

  @override
  String get profile_uploaded_documents_title => 'Uppladdade dokument';

  @override
  String get error_cancel_not_allowed => 'Cancel is not allowed for an already started trip';

  @override
  String distanceMeters(String distance) {
    return '$distance m';
  }

  @override
  String distanceKm(String distance) {
    return '$distance km';
  }

  @override
  String distanceFeet(String distance) {
    return '$distance ft';
  }

  @override
  String distanceMiles(String distance) {
    return '$distance mi';
  }

  @override
  String distanceAway(String distance) {
    return '$distance away';
  }

  @override
  String get settings => 'Settings';

  @override
  String get mapSettings => 'Map Settings';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String orderStatusCardTitleMultipleDestinations(int destinationIndex) {
    return 'Heading to ${destinationIndex}st destination';
  }

  @override
  String actionArrivedToDestination(int destinationIndex) {
    return 'Arrived to ${destinationIndex}st destination';
  }

  @override
  String get skipVerificationDemoOnly => 'Skip verification (Demo only)';
    @override
  String get register_email_password_title=> 'Ingrese su correo electrónico y contraseña';

  @override
  String get register_email_password_subtitle=> 'Usaremos esto para que pueda iniciar sesión en la aplicación';

  @override
  String get register_step_email_password=>'Email y password';

}
