import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class SFr extends S {
  SFr([String locale = 'fr']) : super(locale);

  @override
  String get statusOffline => 'Aller en ligne';

  @override
  String get statusOnline => 'Se déconnecter';

  @override
  String get message_notification_permission_title => 'Autorisation de notification';

  @override
  String get message_notification_permission_denined_message => 'L\'autorisation de notification a été refusée précédemment. Afin d\'obtenir de nouvelles notifications de commande, vous pouvez activer l\'autorisation à partir des paramètres de l\'application.';

  @override
  String get action_ok => 'D\'ACCORD';

  @override
  String get menu_logout => 'Se déconnecter';

  @override
  String get menu_about => 'À propos de';

  @override
  String get menu_wallet => 'Porte monnaie';

  @override
  String get menu_trip_history => 'Historique des trajets';

  @override
  String get menu_announcements => 'Annonces';

  @override
  String get message_unknown_error => 'Erreur inconnue';

  @override
  String get title_success => 'Succès';

  @override
  String get driver_register_profile_submitted_message => 'Votre profil est soumis à l\'approbation de l\'administrateur. Vous pouvez revenir plus tard pour voir l\'état de votre soumission.';

  @override
  String get driver_registration_approved_demo_mode => 'Normalement, à ce stade, l\'administrateur doit approuver la soumission du conducteur à partir du panneau d\'administration. Cependant, pour les besoins de la démo, votre profil est automatiquement approuvé maintenant et est prêt à être utilisé.';

  @override
  String get title_important => 'IMPORTANT!';

  @override
  String get cell_number => 'Numéro de téléphone';

  @override
  String get phone_number_empty => 'Veuillez entrer le numéro de téléphone';

  @override
  String get driver_registration_step_verify_number_title => 'Vérifier le numéro';

  @override
  String get driver_register_verification_code_textfield_hint => 'Le code de vérification';

  @override
  String get driver_register_contact_details_title => 'Détails du contact';

  @override
  String get firstname => 'Prénom';

  @override
  String get lastname => 'Nom de famille';

  @override
  String get email => 'E-mail';

  @override
  String get certificate_number => 'Numéro de certificat';

  @override
  String get gender => 'Le genre';

  @override
  String get gender_male => 'Homme';

  @override
  String get gender_female => 'Femelle';

  @override
  String get address => 'Adresse';

  @override
  String get driver_register_ride_details_step_title => 'Détails du trajet';

  @override
  String get plate_number => 'Numéro de la plaque';

  @override
  String get car_production_year => 'Année de production';

  @override
  String get car_model => 'Modèle de voiture';

  @override
  String get car_color => 'Couleur de la voiture';

  @override
  String get driver_register_step_payout_details_title => 'Détails du paiement';

  @override
  String get bank_name => 'Nom de banque';

  @override
  String get account_number => 'Numéro de compte';

  @override
  String get bank_swift => 'Banque Swift';

  @override
  String get bankRoutingNumber => 'Numéro d\'acheminement bancaire';

  @override
  String get driver_register_step_documents_title => 'Documents';

  @override
  String get driver_register_step_documents_heading => 'Afin de vérifier les documents ci-dessus, nous avons besoin des documents ci-dessous en cours de téléchargement';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => 'Permis 2 conducteurs';

  @override
  String get driver_register_document_third => 'Document de propriété de 3-Ride';

  @override
  String get action_upload_document => 'Télécharger un document';

  @override
  String get trip_history_empty_state => 'Aucune commande passée n\'a été enregistrée.';

  @override
  String get wallet_empty_state_message => 'Aucun historique enregistré.';

  @override
  String get enum_unknown => 'Inconnu';

  @override
  String get top_up_sheet_pay_button => 'Payer';

  @override
  String get loading => 'CHARGEMENT EN COURS';

  @override
  String get available_order_action_accept => 'Accepter la commande';

  @override
  String get order_status_action_received_cash => 'Paiement en espèces reçu';

  @override
  String get action_cancel => 'Annuler';

  @override
  String get order_status_action_navigate => 'Naviguer';

  @override
  String get order_status_action_arrived => 'Arrivé';

  @override
  String get order_status_action_start => 'Commencer le voyage';

  @override
  String get order_status_action_finished => 'Finir';

  @override
  String get message_cant_open_url => 'La commande n\'est pas prise en charge';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Virement';

  @override
  String get enum_driver_recharge_type_gift => 'Cadeau';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Paiement intégré à l\'application';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Frais de commande';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Se désister';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Correction';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Commission';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Tous droits réservés.';
  }

  @override
  String get wallet_activities_heading => 'Activités';

  @override
  String get form_required_field_error => 'champs requis';

  @override
  String get button_report_issue => 'Signaler un problème';

  @override
  String get issue_submit_title => 'Signaler un problème';

  @override
  String get issue_subject_placeholder => 'Matière';

  @override
  String get error_field_cant_be_empty => 'Ne peux pas être vide';

  @override
  String get issue_description_placeholder => 'La description';

  @override
  String get complaint_submit_success_message => 'La plainte est déposée. Veuillez attendre un contact de notre représentant du support au sujet de votre demande.';

  @override
  String get menu_earnings => 'Gains';

  @override
  String get status_offline_description => 'Connectez-vous pour voir les demandes';

  @override
  String get status_online_description => 'Recherche de course';

  @override
  String get order_status_card_title_driver_accepted => 'Le passager sera informé une fois que vous aurez appuyé sur Arrivé';

  @override
  String get order_status_card_title_arrived => 'Le coureur a été informé';

  @override
  String get order_status_card_title_started => 'En route vers la destination';

  @override
  String get navigation_dialog_title => 'Choisissez une application avec laquelle naviguer';

  @override
  String get action_ride_options => 'Options de trajet';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Le passager vous attendait il y a $minutes';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Le passager vous attend dans $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'Le trajet n\'a pas encore été payé';

  @override
  String get order_payment_status_paid => 'Le passager a été payé';

  @override
  String get action_ride_preferences => 'Préférences du pilote';

  @override
  String get navigation_dialog_title_pickup_point => 'Accédez au point de ramassage';

  @override
  String get navigation_title_destination_point => 'Naviguer jusqu\'au point de dépôt';

  @override
  String get rider_options_dialog_title => 'Options de trajet';

  @override
  String get action_cancel_ride => 'Annuler le trajet';

  @override
  String get invoice_dialog_body => 'Vous pouvez également recevoir de l\'argent au lieu d\'un paiement en ligne si vous et l\'auteur êtes tous les deux disposés à le faire.';

  @override
  String get invoice_dialog_heading => 'En attente du paiement du passager';

  @override
  String get invoice_dialog_title => 'Information de paiement';

  @override
  String get invoice_item_tip => 'Pointe';

  @override
  String get invoice_item_subtotal => 'Total';

  @override
  String get add_credit_dialog_title => 'Ajouter un crédit';

  @override
  String get add_credit_dialog_select_payment_method => 'Sélectionnez le mode de paiement:';

  @override
  String get add_credit_dialog_choose_amount => 'Choisissez le montant';

  @override
  String get order_details_payment_method_title => 'Mode de paiement';

  @override
  String get order_payment_method_cash => 'En espèces';

  @override
  String get order_payment_method_online => 'En ligne';

  @override
  String get order_details_trip_information_title => 'Informations sur le voyage';

  @override
  String get issue_submit_body => 'Vous pouvez signaler tout problème rencontré avec votre trajet. Nous vous aiderons à résoudre le problème dans le cadre d\'un appel.';

  @override
  String get announcements_empty_state_title => 'Pas encore d\'annonces !';

  @override
  String get announcements_empty_state_body => 'Nous vous informerons lorsque de nouvelles annonces arriveront.';

  @override
  String get empty_state_title_no_record => 'Aucune donnée disponible!';

  @override
  String get earnings_empty_state_body => 'Aux critères définis ci-dessus, nous ne pouvons trouver aucun enregistrement.';

  @override
  String get action_continue => 'Continuer';

  @override
  String get terms_and_condition_first_part => 'J\'ai lu et suis d\'accord avec';

  @override
  String get terms_and_conditions_clickable_part => 'termes et conditions';

  @override
  String get onboarding_welcome => 'Accueillir !';

  @override
  String get action_login_signup => 'Se connecter S\'inscrire';

  @override
  String get action_complete_registration => 'Enregistrement complet';

  @override
  String get action_edit_submission => 'Modifier la soumission';

  @override
  String get incomplete_registration_description => 'Veuillez compléter votre\n soumission d\'inscription';

  @override
  String get pending_review_registration_description => 'Votre soumission est en cours d\'examen,\n Merci de votre patience.';

  @override
  String get hard_reject_registration => 'Votre soumission est entièrement rejetée !';

  @override
  String get soft_rejection_description => 'Il y a un problème avec la soumission';

  @override
  String get action_confirm_and_continue => 'Confirmer et continuer';

  @override
  String get ride_preferences_title => 'Préférences de conduite';

  @override
  String get action_back => 'Retour';

  @override
  String get title_logout => 'Se déconnecter';

  @override
  String get logout_dialog_body => 'Voulez-vous vraiment vous déconnecter de l\'application ?';

  @override
  String get action_delete_account => 'Supprimer le compte';

  @override
  String get dialog_account_deletion_title => 'Suppression de compte';

  @override
  String get dialog_account_deletion_body => 'Êtes-vous sûr de vouloir supprimer votre compte ? Vous pouvez vous reconnecter dans les 30 jours pour restaurer le compte. Après cette période, vos données sont complètement supprimées, y compris tous vos crédits restants.';

  @override
  String wallet_card_title(Object appName) {
    return 'Portefeuille $appName';
  }

  @override
  String get order_status_canceled => 'Annulé';

  @override
  String get driver_register_title => 'Enregistrement du conducteur';

  @override
  String get menu_profile => 'Mon profil';

  @override
  String get profile_services_title => 'Prestations de service:';

  @override
  String get profile_bank_information_title => 'Informations bancaires';

  @override
  String get profile_vehicle_information_title => 'Informations sur le véhicule';

  @override
  String get profile_distance_traveled => 'Distance parcourue';

  @override
  String get profile_total_trips => 'Nombre total de trajets';

  @override
  String get profile_rating => 'Évaluation';

  @override
  String get register_number_title => 'Entrez votre numéro de téléphone';

  @override
  String get register_number_subtitle => 'Nous enverrons un code à votre numéro pour continuer l\'enregistrement';

  @override
  String get register_verify_code_title => 'Entrez le code';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Nous avons envoyé un code à $number';
  }

  @override
  String get register_contact_details_title => 'Entrez vos coordonnées';

  @override
  String get register_payout_details_title => 'Entrez vos détails de paiement';

  @override
  String get register_ride_details_title => 'Entrez les détails de votre course';

  @override
  String get register_profile_photo_title => 'Télécharger une photo de profil';

  @override
  String get register_profile_photo_subtitle => 'Votre visage doit être reconnaissable dans l\'image téléchargée';

  @override
  String get action_add_photo => 'Ajouter une photo';

  @override
  String get register_upload_documents_title => 'Télécharger les documents requis';

  @override
  String get register_upload_documents_subtitle => 'Afin de vérifier votre identité et de vous conformer à la réglementation, nous aurons besoin que vous téléchargiez les documents ci-dessous : \\n1-Photo d\'identité\\n2-Permis de conduire\\n3-Document de propriété du trajet';

  @override
  String get register_step_phone_number => 'Numéro de téléphone';

  @override
  String get register_step_verify_number => 'Vérifier le numéro';

  @override
  String get register_step_contact_details => 'Détails du contact';

  @override
  String get register_step_ride_details => 'Détails du trajet';

  @override
  String get register_step_payout_details => 'Détails du paiement';

  @override
  String get register_step_upload_documents => 'Télécharger des documents';

  @override
  String get profile_uploaded_documents_title => 'Documents téléchargés';

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
