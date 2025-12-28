import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class SDe extends S {
  SDe([String locale = 'de']) : super(locale);

  @override
  String get statusOffline => 'Online gehen';

  @override
  String get statusOnline => 'Gehe offline';

  @override
  String get message_notification_permission_title => 'Benachrichtigungsberechtigung';

  @override
  String get message_notification_permission_denined_message => 'Die Benachrichtigungsberechtigung wurde zuvor verweigert. Um Benachrichtigungen über neue Bestellungen zu erhalten, können Sie die Berechtigung in den App-Einstellungen aktivieren.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Ausloggen';

  @override
  String get menu_about => 'Um';

  @override
  String get menu_wallet => 'Geldbörse';

  @override
  String get menu_trip_history => 'Reiseverlauf';

  @override
  String get menu_announcements => 'Ankündigungen';

  @override
  String get message_unknown_error => 'Unbekannter Fehler';

  @override
  String get title_success => 'Erfolg';

  @override
  String get driver_register_profile_submitted_message => 'Ihr Profil wird zur Genehmigung durch den Administrator übermittelt. Sie können später noch einmal nachschauen, um den Status Ihrer Einreichung zu sehen.';

  @override
  String get driver_registration_approved_demo_mode => 'Normalerweise müsste der Administrator zu diesem Zeitpunkt die Übermittlung des Fahrers über das Admin-Panel genehmigen. Für die Demo wird Ihr Profil jedoch jetzt automatisch genehmigt und kann verwendet werden.';

  @override
  String get title_important => 'WICHTIG!';

  @override
  String get cell_number => 'Telefonnummer';

  @override
  String get phone_number_empty => 'Bitte geben Sie die Telefonnummer ein';

  @override
  String get driver_registration_step_verify_number_title => 'Nummer bestätigen';

  @override
  String get driver_register_verification_code_textfield_hint => 'Verifizierungs-Schlüssel';

  @override
  String get driver_register_contact_details_title => 'Kontaktdetails';

  @override
  String get firstname => 'Vorname';

  @override
  String get lastname => 'Nachname';

  @override
  String get email => 'Email';

  @override
  String get certificate_number => 'Zertifikatsnummer';

  @override
  String get gender => 'Geschlecht';

  @override
  String get gender_male => 'Männlich';

  @override
  String get gender_female => 'Weiblich';

  @override
  String get address => 'Adresse';

  @override
  String get driver_register_ride_details_step_title => 'Fahrdetails';

  @override
  String get plate_number => 'Kennzeichen';

  @override
  String get car_production_year => 'Produktionsjahr';

  @override
  String get car_model => 'Auto Model';

  @override
  String get car_color => 'Autofarbe';

  @override
  String get driver_register_step_payout_details_title => 'Auszahlungsdetails';

  @override
  String get bank_name => 'Bank Name';

  @override
  String get account_number => 'Kontonummer';

  @override
  String get bank_swift => 'Bankswift';

  @override
  String get bankRoutingNumber => 'Bankleitzahl';

  @override
  String get driver_register_step_documents_title => 'Unterlagen';

  @override
  String get driver_register_step_documents_heading => 'Um die oben genannten Dokumente zu überprüfen, müssen die folgenden Dokumente hochgeladen werden';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-Führerschein';

  @override
  String get driver_register_document_third => 'Eigentumsdokument von 3-Ride';

  @override
  String get action_upload_document => 'Dokument hochladen';

  @override
  String get trip_history_empty_state => 'Es wurde keine frühere Bestellung aufgezeichnet.';

  @override
  String get wallet_empty_state_message => 'Keine Historie aufgezeichnet.';

  @override
  String get enum_unknown => 'Unbekannt';

  @override
  String get top_up_sheet_pay_button => 'Zahlen';

  @override
  String get loading => 'WIRD GELADEN';

  @override
  String get available_order_action_accept => 'Bestellung annehmen';

  @override
  String get order_status_action_received_cash => 'Barzahlung erhalten';

  @override
  String get action_cancel => 'Absagen';

  @override
  String get order_status_action_navigate => 'Navigieren';

  @override
  String get order_status_action_arrived => 'Angekommen';

  @override
  String get order_status_action_start => 'Reise starten';

  @override
  String get order_status_action_finished => 'Fertig';

  @override
  String get message_cant_open_url => 'Befehl wird nicht unterstützt';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Banküberweisung';

  @override
  String get enum_driver_recharge_type_gift => 'Geschenk';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'In-App-Zahlung';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Bestellgebühr';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Abheben';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Korrektur';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Kommission';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alle Rechte vorbehalten.';
  }

  @override
  String get wallet_activities_heading => 'Aktivitäten';

  @override
  String get form_required_field_error => 'Pflichtfeld';

  @override
  String get button_report_issue => 'Ein Problem melden';

  @override
  String get issue_submit_title => 'Ein Problem melden';

  @override
  String get issue_subject_placeholder => 'Thema';

  @override
  String get error_field_cant_be_empty => 'Kann nicht leer sein';

  @override
  String get issue_description_placeholder => 'Beschreibung';

  @override
  String get complaint_submit_success_message => 'Reklamation wird eingereicht. Bitte warten Sie auf eine Kontaktaufnahme von unserem Support-Mitarbeiter zu Ihrer Anfrage.';

  @override
  String get menu_earnings => 'Verdienste';

  @override
  String get status_offline_description => 'Gehen Sie online, um Anfragen anzuzeigen';

  @override
  String get status_online_description => 'Mitfahrgelegenheit gesucht';

  @override
  String get order_status_card_title_driver_accepted => 'Der Fahrer wird benachrichtigt, sobald Sie auf „Angekommen“ tippen';

  @override
  String get order_status_card_title_arrived => 'Fahrer wurde benachrichtigt';

  @override
  String get order_status_card_title_started => 'Auf dem Weg zum Ziel';

  @override
  String get navigation_dialog_title => 'Wählen Sie eine App aus, mit der Sie navigieren möchten';

  @override
  String get action_ride_options => 'Fahroptionen';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider hat dich vor $minutes erwartet';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider erwartet dich in $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'Die Fahrt wurde noch nicht bezahlt';

  @override
  String get order_payment_status_paid => 'Fahrer wurde bezahlt';

  @override
  String get action_ride_preferences => 'Fahrerpräferenzen';

  @override
  String get navigation_dialog_title_pickup_point => 'Navigieren Sie zum Abholpunkt';

  @override
  String get navigation_title_destination_point => 'Navigieren Sie zum Abgabepunkt';

  @override
  String get rider_options_dialog_title => 'Fahroptionen';

  @override
  String get action_cancel_ride => 'Fahrt abbrechen';

  @override
  String get invoice_dialog_body => 'Sie können anstelle einer Online-Zahlung auch Bargeld erhalten, wenn Sie und der Autor beide dazu bereit sind.';

  @override
  String get invoice_dialog_heading => 'Warten auf Fahrerzahlung';

  @override
  String get invoice_dialog_title => 'Zahlungsinformationen';

  @override
  String get invoice_item_tip => 'Tipp';

  @override
  String get invoice_item_subtotal => 'Zwischensumme';

  @override
  String get add_credit_dialog_title => 'Guthaben hinzufügen';

  @override
  String get add_credit_dialog_select_payment_method => 'Wählen Sie die Zahlungsmethode:';

  @override
  String get add_credit_dialog_choose_amount => 'Betrag wählen';

  @override
  String get order_details_payment_method_title => 'Zahlungsmethode';

  @override
  String get order_payment_method_cash => 'Kasse';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Reiseinformationen';

  @override
  String get issue_submit_body => 'Sie können jedes Problem melden, das Sie mit Ihrer Fahrt hatten. Wir helfen Ihnen bei dem Problem innerhalb eines Anrufs.';

  @override
  String get announcements_empty_state_title => 'Noch keine Ankündigungen!';

  @override
  String get announcements_empty_state_body => 'Wir werden Sie benachrichtigen, wenn neue Ankündigungen kommen.';

  @override
  String get empty_state_title_no_record => 'Keine Daten gefunden!';

  @override
  String get earnings_empty_state_body => 'Zu den oben festgelegten Kriterien können wir keine Datensätze finden.';

  @override
  String get action_continue => 'Fortsetzen';

  @override
  String get terms_and_condition_first_part => 'Ich habe gelesen und stimme zu';

  @override
  String get terms_and_conditions_clickable_part => 'Terms & amp; Bedingungen';

  @override
  String get onboarding_welcome => 'Herzlich willkommen !';

  @override
  String get action_login_signup => 'Einloggen Anmelden';

  @override
  String get action_complete_registration => 'Komplette Registrierung';

  @override
  String get action_edit_submission => 'Einreichung bearbeiten';

  @override
  String get incomplete_registration_description => 'Bitte vervollständigen Sie Ihre\n Registrierungsabgabe';

  @override
  String get pending_review_registration_description => 'Ihr Beitrag wird geprüft,\n Danke für die Geduld.';

  @override
  String get hard_reject_registration => 'Ihre Einreichung wird vollständig abgelehnt!';

  @override
  String get soft_rejection_description => 'Es gibt ein Problem mit der Übermittlung';

  @override
  String get action_confirm_and_continue => 'Bestätigung & weiter';

  @override
  String get ride_preferences_title => 'Fahrpräferenzen';

  @override
  String get action_back => 'Der Rücken';

  @override
  String get title_logout => 'Ausloggen';

  @override
  String get logout_dialog_body => 'Möchten Sie sich wirklich von der Anwendung abmelden?';

  @override
  String get action_delete_account => 'Konto löschen';

  @override
  String get dialog_account_deletion_title => 'Kontolöschung';

  @override
  String get dialog_account_deletion_body => 'Möchten Sie Ihr Konto wirklich löschen? Sie können sich innerhalb von 30 Tagen erneut anmelden, um das Konto wiederherzustellen. Nach diesem Zeitraum werden Ihre Daten vollständig entfernt, einschließlich aller Ihrer verbleibenden Credits.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Geldbörse';
  }

  @override
  String get order_status_canceled => 'Abgesagt';

  @override
  String get driver_register_title => 'Fahrerregistrierung';

  @override
  String get menu_profile => 'Mein Profil';

  @override
  String get profile_services_title => 'Dienstleistungen:';

  @override
  String get profile_bank_information_title => 'Bank Informationen';

  @override
  String get profile_vehicle_information_title => 'Fahrzeuginformationen';

  @override
  String get profile_distance_traveled => 'Zurückgelegte Entfernung';

  @override
  String get profile_total_trips => 'Fahrten insgesamt';

  @override
  String get profile_rating => 'Bewertung';

  @override
  String get register_number_title => 'Trage deine Telefonnummer ein';

  @override
  String get register_number_subtitle => 'Wir senden einen Code an Ihre Nummer, um die Registrierung fortzusetzen';

  @override
  String get register_verify_code_title => 'Code eingeben';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Wir haben einen Code an $number gesendet';
  }

  @override
  String get register_contact_details_title => 'Geben Sie Ihre Kontaktdaten ein';

  @override
  String get register_payout_details_title => 'Geben Sie Ihre Auszahlungsdetails ein';

  @override
  String get register_ride_details_title => 'Geben Sie Ihre Fahrtdaten ein';

  @override
  String get register_profile_photo_title => 'Profilfoto hochladen';

  @override
  String get register_profile_photo_subtitle => 'Ihr Gesicht sollte auf dem hochgeladenen Bild erkennbar sein';

  @override
  String get action_add_photo => 'Foto hinzufügen';

  @override
  String get register_upload_documents_title => 'Laden Sie erforderliche Dokumente hoch';

  @override
  String get register_upload_documents_subtitle => 'Um Ihre Identität zu überprüfen und die Vorschriften einzuhalten, müssen Sie die folgenden Dokumente hochladen: \\n1-Lichtbildausweis\\n2-Führerschein\\n3-Fahrzeugbesitzdokument';

  @override
  String get register_step_phone_number => 'Telefonnummer';

  @override
  String get register_step_verify_number => 'Nummer bestätigen';

  @override
  String get register_step_contact_details => 'Kontaktdetails';

  @override
  String get register_step_ride_details => 'Fahrdetails';

  @override
  String get register_step_payout_details => 'Auszahlungsdetails';

  @override
  String get register_step_upload_documents => 'Dokumente hochladen';

  @override
  String get profile_uploaded_documents_title => 'Hochgeladene Dokumente';

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
