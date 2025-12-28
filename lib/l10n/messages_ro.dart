import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class SRo extends S {
  SRo([String locale = 'ro']) : super(locale);

  @override
  String get statusOffline => 'Mergi Online';

  @override
  String get statusOnline => 'Mergi Offline';

  @override
  String get message_notification_permission_title => 'Permisiune de notificare';

  @override
  String get message_notification_permission_denined_message => 'Permisiunea de notificare a fost refuzată anterior. Pentru a primi notificări de comenzi noi, puteți activa permisiunea din setările aplicației.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Delogare';

  @override
  String get menu_about => 'Despre';

  @override
  String get menu_wallet => 'Portofel';

  @override
  String get menu_trip_history => 'Istoric de călătorii';

  @override
  String get menu_announcements => 'Anunțuri';

  @override
  String get message_unknown_error => 'Eroare necunoscută';

  @override
  String get title_success => 'Succes';

  @override
  String get driver_register_profile_submitted_message => 'Profilul dvs. este trimis pentru aprobarea administratorului. Puteți verifica mai târziu starea depunerii dvs.';

  @override
  String get driver_registration_approved_demo_mode => 'De obicei, la acest pas, administratorul ar trebui să aprobe depunerea șoferului din Panoul de administrare. Cu toate acestea, în scopul demonstrării, profilul dvs. este aprobat automat acum și este gata de utilizat.';

  @override
  String get title_important => 'IMPORTANT!';

  @override
  String get cell_number => 'Număr de telefon mobil';

  @override
  String get phone_number_empty => 'Vă rugăm să introduceți numărul de telefon';

  @override
  String get driver_registration_step_verify_number_title => 'Verificați numărul';

  @override
  String get driver_register_verification_code_textfield_hint => 'Cod de verificare';

  @override
  String get driver_register_contact_details_title => 'Detalii de contact';

  @override
  String get firstname => 'Prenume';

  @override
  String get lastname => 'Nume de familie';

  @override
  String get email => 'E-Mail';

  @override
  String get certificate_number => 'Numărul certificatului';

  @override
  String get gender => 'Sex';

  @override
  String get gender_male => 'Bărbat';

  @override
  String get gender_female => 'Femeie';

  @override
  String get address => 'Adresă';

  @override
  String get driver_register_ride_details_step_title => 'Detalii de călătorie';

  @override
  String get plate_number => 'Număr de înmatriculare';

  @override
  String get car_production_year => 'Anul de producție';

  @override
  String get car_model => 'Modelul mașinii';

  @override
  String get car_color => 'Culoarea mașinii';

  @override
  String get driver_register_step_payout_details_title => 'Detalii de plată';

  @override
  String get bank_name => 'Numele băncii';

  @override
  String get account_number => 'Numărul de cont';

  @override
  String get bank_swift => 'Cod Swift';

  @override
  String get bankRoutingNumber => 'Numărul de rutare bancară';

  @override
  String get driver_register_step_documents_title => 'Încărcați documente';

  @override
  String get driver_register_step_documents_heading => 'Pentru a verifica documentele de mai sus, trebuie să încărcați documentele de mai jos';

  @override
  String get driver_register_document_first => '1- Cartea de identitate';

  @override
  String get driver_register_document_second => '2- Permisul de conducere';

  @override
  String get driver_register_document_third => '3- Înregistrarea vehiculului';

  @override
  String get action_upload_document => 'Încărcați documentul';

  @override
  String get trip_history_empty_state => 'Nu a fost înregistrată nicio comandă anterioară.';

  @override
  String get wallet_empty_state_message => 'Nu există istoric înregistrat.';

  @override
  String get enum_unknown => 'Necunoscut';

  @override
  String get top_up_sheet_pay_button => 'Plată';

  @override
  String get loading => 'SE ÎNCARCĂ';

  @override
  String get available_order_action_accept => 'Acceptați comanda';

  @override
  String get order_status_action_received_cash => 'S-a primit plata în numerar';

  @override
  String get action_cancel => 'Anulare';

  @override
  String get order_status_action_navigate => 'Navigați';

  @override
  String get order_status_action_arrived => 'Ați ajuns';

  @override
  String get order_status_action_start => 'Începeți călătoria';

  @override
  String get order_status_action_finished => 'Terminați';

  @override
  String get message_cant_open_url => 'Comanda nu este acceptată';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Transfer bancar';

  @override
  String get enum_driver_recharge_type_gift => 'Cadou';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Plată în aplicație';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Comision de comandă';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Retragere';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Corecție';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Comision';

  @override
  String copyright_notice(Object company) {
    return 'Drepturi de autor © $company, Toate drepturile rezervate.';
  }

  @override
  String get wallet_activities_heading => 'Activități';

  @override
  String get form_required_field_error => 'Câmpul este obligatoriu';

  @override
  String get button_report_issue => 'Raportați o problemă';

  @override
  String get issue_submit_title => 'Raportați o problemă';

  @override
  String get issue_subject_placeholder => 'Subiect';

  @override
  String get error_field_cant_be_empty => 'Nu poate fi gol';

  @override
  String get issue_description_placeholder => 'Descriere';

  @override
  String get complaint_submit_success_message => 'Plângerea a fost depusă. Vă rugăm să așteptați un contact de la reprezentantul nostru de asistență referitor la solicitarea dvs.';

  @override
  String get menu_earnings => 'Venituri';

  @override
  String get status_offline_description => 'Conectați-vă pentru a vedea cererile';

  @override
  String get status_online_description => 'Căutarea unei călătorii';

  @override
  String get order_status_card_title_driver_accepted => 'Clientul va fi notificat după ce apăsați Ajuns';

  @override
  String get order_status_card_title_arrived => 'Clientul a fost notificat';

  @override
  String get order_status_card_title_started => 'Îndreptându-se către destinație';

  @override
  String get navigation_dialog_title => 'Alegeți o aplicație pentru navigare';

  @override
  String get action_ride_options => 'Opțiuni călătorie';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Clientul vă aștepta de acum $minutes minute';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Clientul vă așteaptă în $minutes minute';
  }

  @override
  String get order_payment_status_unpaid => 'Călătoria nu a fost încă plătită';

  @override
  String get order_payment_status_paid => 'Călătoria a fost plătită';

  @override
  String get action_ride_preferences => 'Preferințe călătorie';

  @override
  String get navigation_dialog_title_pickup_point => 'Navigați către punctul de preluare';

  @override
  String get navigation_title_destination_point => 'Navigați către punctul de destinație';

  @override
  String get rider_options_dialog_title => 'Opțiuni călătorie';

  @override
  String get action_cancel_ride => 'Anulați călătoria';

  @override
  String get invoice_dialog_body => 'De asemenea, puteți primi numerar în loc de o plată online, dacă dumneavoastră și clientul sunteți de acord.';

  @override
  String get invoice_dialog_heading => 'Așteptarea plății de la client';

  @override
  String get invoice_dialog_title => 'Informații de plată';

  @override
  String get invoice_item_tip => 'Sfaturi';

  @override
  String get invoice_item_subtotal => 'Subtotal';

  @override
  String get add_credit_dialog_title => 'Adăugați credit';

  @override
  String get add_credit_dialog_select_payment_method => 'Selectați metoda de plată:';

  @override
  String get add_credit_dialog_choose_amount => 'Alegeți suma';

  @override
  String get order_details_payment_method_title => 'Metoda de plată';

  @override
  String get order_payment_method_cash => 'Numerar';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Informații călătorie';

  @override
  String get issue_submit_body => 'Puteți raporta orice problemă pe care ați întâmpinat-o în timpul călătoriei. Vă vom ajuta cu problema în cadrul unui apel.';

  @override
  String get announcements_empty_state_title => 'Nici o notificare încă!';

  @override
  String get announcements_empty_state_body => 'Vă vom notifica când vor apărea notificări noi.';

  @override
  String get empty_state_title_no_record => 'Nu s-au găsit date!';

  @override
  String get earnings_empty_state_body => 'La criteriile setate mai sus, nu am găsit niciun înregistrări.';

  @override
  String get action_continue => 'Continuați';

  @override
  String get terms_and_condition_first_part => 'Am citit și sunt de acord cu ';

  @override
  String get terms_and_conditions_clickable_part => 'Termeni și condiții';

  @override
  String get onboarding_welcome => 'Bun venit!';

  @override
  String get action_login_signup => 'Autentificare / Înregistrare';

  @override
  String get action_complete_registration => 'Finalizare înregistrare';

  @override
  String get action_edit_submission => 'Editare înregistrare';

  @override
  String get incomplete_registration_description => 'Vă rugăm să completați înregistrarea';

  @override
  String get pending_review_registration_description => 'Înregistrarea dvs. este în curs de revizuire, mulțumim pentru răbdare.';

  @override
  String get hard_reject_registration => 'Înregistrarea dvs. este respinsă în totalitate!';

  @override
  String get soft_rejection_description => 'Există o problemă cu înregistrarea';

  @override
  String get action_confirm_and_continue => 'Confirmați și continuați';

  @override
  String get ride_preferences_title => 'Preferințe călătorie';

  @override
  String get action_back => 'Înapoi';

  @override
  String get title_logout => 'Deconectare';

  @override
  String get logout_dialog_body => 'Sigur doriți să vă deconectați din aplicație?';

  @override
  String get action_delete_account => 'Ștergere cont';

  @override
  String get dialog_account_deletion_title => 'Ștergere cont';

  @override
  String get dialog_account_deletion_body => 'Sigur doriți să ștergeți contul? Vă puteți conecta din nou în termen de 30 de zile pentru a restabili contul. După această perioadă, datele dvs. vor fi eliminate complet, inclusiv toate creditelor rămase.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Portofel';
  }

  @override
  String get order_status_canceled => 'Anulat';

  @override
  String get driver_register_title => 'Înregistrare șofer';

  @override
  String get menu_profile => 'Profilul meu';

  @override
  String get profile_services_title => 'Servicii:';

  @override
  String get profile_bank_information_title => 'Informații bancare';

  @override
  String get profile_vehicle_information_title => 'Informații vehicul';

  @override
  String get profile_distance_traveled => 'Distanța parcursă';

  @override
  String get profile_total_trips => 'Total călătorii';

  @override
  String get profile_rating => 'Evaluare';

  @override
  String get register_number_title => 'Introduceți numărul de telefon';

  @override
  String get register_number_subtitle => 'Vom trimite un cod la numărul dvs. pentru a continua înregistrarea';

  @override
  String get register_verify_code_title => 'Introduceți codul';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Am trimis un cod la $number';
  }

  @override
  String get register_contact_details_title => 'Introduceți datele de contact';

  @override
  String get register_payout_details_title => 'Introduceți informațiile de plată';

  @override
  String get register_ride_details_title => 'Introduceți detaliile călătoriei';

  @override
  String get register_profile_photo_title => 'Încărcați fotografia de profil';

  @override
  String get register_profile_photo_subtitle => 'Fața dvs. trebuie să fie recunoscută în imaginea încărcată';

  @override
  String get action_add_photo => 'Adăugați fotografia';

  @override
  String get register_upload_documents_title => 'Încărcați documentele necesare';

  @override
  String get register_upload_documents_subtitle => 'Pentru a vă verifica identitatea și a respecta reglementările, avem nevoie să încărcați următoarele documente: \n1- ID-ul foto\n2- Permisiune conducere\n3- Document de proprietate al vehiculului';

  @override
  String get register_step_phone_number => 'Număr de telefon';

  @override
  String get register_step_verify_number => 'Verificare număr';

  @override
  String get register_step_contact_details => 'Detalii de contact';

  @override
  String get register_step_ride_details => 'Detalii călătorie';

  @override
  String get register_step_payout_details => 'Detalii de plată';

  @override
  String get register_step_upload_documents => 'Încărcați documentele';

  @override
  String get profile_uploaded_documents_title => 'Documente încărcate';

  @override
  String get error_cancel_not_allowed => 'Anularea nu este permisă pentru o călătorie care a început deja';

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
