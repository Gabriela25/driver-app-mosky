import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class SIt extends S {
  SIt([String locale = 'it']) : super(locale);

  @override
  String get statusOffline => 'Disponibile';

  @override
  String get statusOnline => 'Non disponibile';

  @override
  String get message_notification_permission_title => 'Permesso di notifica';

  @override
  String get message_notification_permission_denined_message => 'Il permesso di notifica è stato negato in precedenza. Per ricevere le nuove notifiche di ordine, è possibile abilitare il permesso dalle impostazioni dell\'app.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Logout';

  @override
  String get menu_about => 'Informazioni';

  @override
  String get menu_wallet => 'Portafoglio';

  @override
  String get menu_trip_history => 'Cronologia viaggi';

  @override
  String get menu_announcements => 'Comunicazioni';

  @override
  String get message_unknown_error => 'Errore sconosciuto';

  @override
  String get title_success => 'Successo';

  @override
  String get driver_register_profile_submitted_message => 'Il tuo profilo è stato inviato per l\'approvazione dell\'amministratore. Puoi controllare più tardi lo stato della tua richiesta.';

  @override
  String get driver_registration_approved_demo_mode => 'Normalmente, in questa fase l\'amministratore dovrebbe approvare la richiesta del conducente dal pannello di amministrazione. Tuttavia, per il bene della demo, il tuo profilo è stato automaticamente approvato ora ed è pronto per l\'uso.';

  @override
  String get title_important => 'IMPORTANTE!';

  @override
  String get cell_number => 'Numero di cellulare';

  @override
  String get phone_number_empty => 'Inserisci il numero di telefono';

  @override
  String get driver_registration_step_verify_number_title => 'Verifica numero';

  @override
  String get driver_register_verification_code_textfield_hint => 'Codice di verifica';

  @override
  String get driver_register_contact_details_title => 'Dettagli di contatto';

  @override
  String get firstname => 'Nome';

  @override
  String get lastname => 'Cognome';

  @override
  String get email => 'E-Mail';

  @override
  String get certificate_number => 'Numero certificato';

  @override
  String get gender => 'Genere';

  @override
  String get gender_male => 'Maschio';

  @override
  String get gender_female => 'Femmina';

  @override
  String get address => 'Indirizzo';

  @override
  String get driver_register_ride_details_step_title => 'Dettagli corsa';

  @override
  String get plate_number => 'Numero targa';

  @override
  String get car_production_year => 'Anno di produzione dell\'auto';

  @override
  String get car_model => 'Modello dell\'auto';

  @override
  String get car_color => 'Colore dell\'auto';

  @override
  String get driver_register_step_payout_details_title => 'Dettagli di pagamento';

  @override
  String get bank_name => 'Nome della banca';

  @override
  String get account_number => 'Numero di conto';

  @override
  String get bank_swift => 'Codice swift';

  @override
  String get bankRoutingNumber => 'Numero di routing bancario';

  @override
  String get driver_register_step_documents_title => 'Carica documenti';

  @override
  String get driver_register_step_documents_heading => 'Per verificare i documenti sopra elencati, richiediamo l\'upload dei seguenti documenti:';

  @override
  String get driver_register_document_first => '1 - Carta d\'Identità';

  @override
  String get driver_register_document_second => '2 - Patente di Guida';

  @override
  String get driver_register_document_third => '3 - Registrazione del veicolo';

  @override
  String get action_upload_document => 'Carica Documento';

  @override
  String get trip_history_empty_state => 'Nessun ordine passato è stato registrato.';

  @override
  String get wallet_empty_state_message => 'Nessuna attività registrata.';

  @override
  String get enum_unknown => 'Sconosciuto';

  @override
  String get top_up_sheet_pay_button => 'Paga';

  @override
  String get loading => 'CARICAMENTO';

  @override
  String get available_order_action_accept => 'Accetta Ordine';

  @override
  String get order_status_action_received_cash => 'Pagamento in contanti ricevuto';

  @override
  String get action_cancel => 'Annulla';

  @override
  String get order_status_action_navigate => 'Naviga';

  @override
  String get order_status_action_arrived => 'Arrivato';

  @override
  String get order_status_action_start => 'Inizia il Viaggio';

  @override
  String get order_status_action_finished => 'Termina';

  @override
  String get message_cant_open_url => 'Comando non supportato';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Bonifico Bancario';

  @override
  String get enum_driver_recharge_type_gift => 'Buono Regalo';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Pagamento In-App';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Tariffa d\'Ordine';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Prelievo';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Correzione';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Commissione';

  @override
  String copyright_notice(Object company) {
    return 'Diritti d\'autore © $company, tutti i diritti riservati.';
  }

  @override
  String get wallet_activities_heading => 'Attività';

  @override
  String get form_required_field_error => 'Campo Obbligatorio';

  @override
  String get button_report_issue => 'Segnala un Problema';

  @override
  String get issue_submit_title => 'Segnala un Problema';

  @override
  String get issue_subject_placeholder => 'Oggetto';

  @override
  String get error_field_cant_be_empty => 'Il campo non può essere vuoto';

  @override
  String get issue_description_placeholder => 'Descrizione';

  @override
  String get complaint_submit_success_message => 'La segnalazione è stata inviata. Attendere il contatto di un rappresentante del nostro servizio di assistenza in merito alla richiesta.';

  @override
  String get menu_earnings => 'Guadagni';

  @override
  String get status_offline_description => 'Entra online per vedere le richieste';

  @override
  String get status_online_description => 'In ricerca di un viaggio';

  @override
  String get order_status_card_title_driver_accepted => 'Il passeggero verrà informato una volta che avrai premuto Arrivato';

  @override
  String get order_status_card_title_arrived => 'Il passeggero è stato informato';

  @override
  String get order_status_card_title_started => 'Direzione destinazione';

  @override
  String get navigation_dialog_title => 'Scegli un\'app per la navigazione';

  @override
  String get action_ride_options => 'Opzioni del viaggio';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Il passeggero ti aspettava da $minutes minuti';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Il passeggero ti aspetta tra $minutes minuti';
  }

  @override
  String get order_payment_status_unpaid => 'Il viaggio non è stato ancora pagato';

  @override
  String get order_payment_status_paid => 'Il viaggio è stato pagato';

  @override
  String get action_ride_preferences => 'Preferenze del passeggero';

  @override
  String get navigation_dialog_title_pickup_point => 'Naviga al punto di ritiro';

  @override
  String get navigation_title_destination_point => 'Naviga alla destinazione';

  @override
  String get rider_options_dialog_title => 'Opzioni del viaggio';

  @override
  String get action_cancel_ride => 'Annulla il viaggio';

  @override
  String get invoice_dialog_body => 'Puoi anche ricevere il pagamento in contanti invece che online se tu e il passeggero siete d\'accordo.';

  @override
  String get invoice_dialog_heading => 'In attesa del pagamento del passeggero';

  @override
  String get invoice_dialog_title => 'Informazioni di pagamento';

  @override
  String get invoice_item_tip => 'Mancia';

  @override
  String get invoice_item_subtotal => 'Subtotale';

  @override
  String get add_credit_dialog_title => 'Aggiungi Credito';

  @override
  String get add_credit_dialog_select_payment_method => 'Seleziona metodo di pagamento:';

  @override
  String get add_credit_dialog_choose_amount => 'Scegli l\'importo';

  @override
  String get order_details_payment_method_title => 'Metodo di pagamento';

  @override
  String get order_payment_method_cash => 'Contanti';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Informazioni sul viaggio';

  @override
  String get issue_submit_body => 'Puoi segnalare qualsiasi problema avuto con il tuo viaggio. Ti aiuteremo con la questione entro una chiamata.';

  @override
  String get announcements_empty_state_title => 'Nessun annuncio ancora!';

  @override
  String get announcements_empty_state_body => 'Ti avviseremo quando arriveranno nuovi annunci.';

  @override
  String get empty_state_title_no_record => 'Nessun dato trovato!';

  @override
  String get earnings_empty_state_body => 'Ai criteri sopra indicati, non possiamo trovare alcun record.';

  @override
  String get action_continue => 'Continua';

  @override
  String get terms_and_condition_first_part => 'Ho letto e accetto i ';

  @override
  String get terms_and_conditions_clickable_part => 'Termini e condizioni';

  @override
  String get onboarding_welcome => 'Benvenuto!';

  @override
  String get action_login_signup => 'Accedi / Registrati';

  @override
  String get action_complete_registration => 'Completa la registrazione';

  @override
  String get action_edit_submission => 'Modifica la presentazione';

  @override
  String get incomplete_registration_description => 'Per favore completa la \n presentazione della tua registrazione';

  @override
  String get pending_review_registration_description => 'La tua presentazione è in fase di revisione, \n Grazie per la pazienza.';

  @override
  String get hard_reject_registration => 'La tua presentazione è stata completamente rifiutata!';

  @override
  String get soft_rejection_description => 'C\'è un problema con la presentazione';

  @override
  String get action_confirm_and_continue => 'Conferma e continua';

  @override
  String get ride_preferences_title => 'Preferenze di viaggio';

  @override
  String get action_back => 'Indietro';

  @override
  String get title_logout => 'Logout';

  @override
  String get logout_dialog_body => 'Sei sicuro di voler uscire dall\'applicazione?';

  @override
  String get action_delete_account => 'Elimina Account';

  @override
  String get dialog_account_deletion_title => 'Eliminazione Account';

  @override
  String get dialog_account_deletion_body => 'Sei sicuro di voler eliminare il tuo account? Puoi accedere nuovamente entro 30 giorni per ripristinare l\'account. Dopo questo periodo, i tuoi dati verranno completamente rimossi, compresi tutti i crediti rimanenti.';

  @override
  String wallet_card_title(Object appName) {
    return 'Portafoglio $appName';
  }

  @override
  String get order_status_canceled => 'Annullato';

  @override
  String get driver_register_title => 'Registrazione Autista';

  @override
  String get menu_profile => 'Il mio profilo';

  @override
  String get profile_services_title => 'Servizi:';

  @override
  String get profile_bank_information_title => 'Informazioni bancarie';

  @override
  String get profile_vehicle_information_title => 'Informazioni sul veicolo';

  @override
  String get profile_distance_traveled => 'Distanza percorsa';

  @override
  String get profile_total_trips => 'Totale viaggi';

  @override
  String get profile_rating => 'Valutazione';

  @override
  String get register_number_title => 'Inserisci il tuo numero di telefono';

  @override
  String get register_number_subtitle => 'Ti invieremo un codice al tuo numero per continuare la registrazione';

  @override
  String get register_verify_code_title => 'Inserisci il codice';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Abbiamo inviato un codice a $number';
  }

  @override
  String get register_contact_details_title => 'Inserisci i tuoi dettagli di contatto';

  @override
  String get register_payout_details_title => 'Inserisci i tuoi dettagli di pagamento';

  @override
  String get register_ride_details_title => 'Inserisci i dettagli del tuo viaggio';

  @override
  String get register_profile_photo_title => 'Carica una foto del profilo';

  @override
  String get register_profile_photo_subtitle => 'Il tuo volto dovrebbe essere riconoscibile nell\'immagine caricata';

  @override
  String get action_add_photo => 'Aggiungi foto';

  @override
  String get register_upload_documents_title => 'Carica i documenti richiesti';

  @override
  String get register_upload_documents_subtitle => 'Per verificare la tua identità e rispettare le normative, dovrai caricare i seguenti documenti: \n1-Documento d\'identità\n2-Patente di guida\n3-Documento di proprietà del veicolo';

  @override
  String get register_step_phone_number => 'Numero di telefono';

  @override
  String get register_step_verify_number => 'Verifica il Numero';

  @override
  String get register_step_contact_details => 'Dettagli di contatto';

  @override
  String get register_step_ride_details => 'Dettagli del viaggio';

  @override
  String get register_step_payout_details => 'Dettagli di pagamento';

  @override
  String get register_step_upload_documents => 'Carica i documenti';

  @override
  String get profile_uploaded_documents_title => 'Documenti caricati';

  @override
  String get error_cancel_not_allowed => 'L\'annullamento non è consentito per un viaggio già avviato.';

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
