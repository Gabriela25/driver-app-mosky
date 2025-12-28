import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class SOm extends S {
  SOm([String locale = 'om']) : super(locale);

  @override
  String get statusOffline => 'Bani/Online';

  @override
  String get statusOnline => 'Cufi/Offiline';

  @override
  String get message_notification_permission_title => 'Eeyyama Beeksisaa.';

  @override
  String get message_notification_permission_denined_message => 'Hayyamni beeksisa kanaan dura dhorkamee ture. Beeksisa ajaja haaraa argachuuf, hayyama sana app settings irraa dandeessisuu dandeessu.';

  @override
  String get action_ok => 'TOLE';

  @override
  String get menu_logout => 'Ba\'i';

  @override
  String get menu_about => 'Waa\'ee';

  @override
  String get menu_wallet => 'Waletii';

  @override
  String get menu_trip_history => 'Seenaa Imalaa';

  @override
  String get menu_announcements => 'Beeksisawwan';

  @override
  String get message_unknown_error => 'Dogoggora hin beekamne';

  @override
  String get title_success => 'Milkaa\'ina';

  @override
  String get driver_register_profile_submitted_message => 'Profaayilli keessan admin approval argachuuf dhiyaateera. Haala ergaa keessanii ilaaluuf boodarra deebi\'anii ilaaluu dandeessu.';

  @override
  String get driver_registration_approved_demo_mode => 'Akka idileetti sadarkaa kana irratti admin yaada konkolaachisaa Admin Panel irraa dhiheesse raggaasisuu barbaachisadha. Haa ta\'u malee demoodhaaf jecha, piroofaayilli keessan amma ofumaan mirkanaa\'ee itti fayyadamuuf qophii ta\'a.';

  @override
  String get title_important => 'BARBAACHISAA!';

  @override
  String get cell_number => 'Lakkoofsa Bilbilaa';

  @override
  String get phone_number_empty => 'Maaloo lakkoofsa bilbilaa galchaa';

  @override
  String get driver_registration_step_verify_number_title => 'Lakkoofsa Mirkaneessaa';

  @override
  String get driver_register_verification_code_textfield_hint => 'Koodii mirkaneessaa';

  @override
  String get driver_register_contact_details_title => 'Odeeffannoo Quunnamtii';

  @override
  String get firstname => 'Maqaa Duraa';

  @override
  String get lastname => 'Maqaa Abba';

  @override
  String get email => 'Imeelii';

  @override
  String get certificate_number => 'Lakkoofsa Hayyamaa';

  @override
  String get gender => 'Saala';

  @override
  String get gender_male => 'Dhiira';

  @override
  String get gender_female => 'Dhalaa';

  @override
  String get address => 'Teessoo';

  @override
  String get driver_register_ride_details_step_title => 'Ibsa Yaabbannoo';

  @override
  String get plate_number => 'Lakkoofsa Gabatee';

  @override
  String get car_production_year => 'Bara Omishaa';

  @override
  String get car_model => 'Moodeela Konkolaataa';

  @override
  String get car_color => 'Halluu Konkolaataa';

  @override
  String get driver_register_step_payout_details_title => 'Ibsa Kaffaltii';

  @override
  String get bank_name => 'Maqaa Baankii';

  @override
  String get account_number => 'Lakkoofsa Herregaa';

  @override
  String get bank_swift => 'Baankii Swiiftii';

  @override
  String get bankRoutingNumber => 'Lakkoofsa Karaa Baankii';

  @override
  String get driver_register_step_documents_title => 'Sanadoota';

  @override
  String get driver_register_step_documents_heading => 'Sanadoota armaan olii mirkaneessuuf sanadoota armaan gadii olkaa\'aa';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-Hayyama Konkolaachisummaa';

  @override
  String get driver_register_document_third => '3-Ride\'s Sanada Abbummaa';

  @override
  String get action_upload_document => 'Sanada Olkaa\'i';

  @override
  String get trip_history_empty_state => 'Tartiiba darbe tokkollee hin galmoofne';

  @override
  String get wallet_empty_state_message => 'Seenaan galmaa\'e hin jiru.';

  @override
  String get enum_unknown => 'Kan hinbeekamne';

  @override
  String get top_up_sheet_pay_button => 'Kaffaltii';

  @override
  String get loading => 'LOADING';

  @override
  String get available_order_action_accept => 'Ajaja Fudhadhu';

  @override
  String get order_status_action_received_cash => 'Kaffaltiin kaffalamera';

  @override
  String get action_cancel => 'Haqi';

  @override
  String get order_status_action_navigate => 'Navigate';

  @override
  String get order_status_action_arrived => 'gahee jira';

  @override
  String get order_status_action_start => 'Imala Jalqabi';

  @override
  String get order_status_action_finished => 'Xumuri';

  @override
  String get message_cant_open_url => 'Ajajni hin deeggaramu';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Baankiin Dabarsuu';

  @override
  String get enum_driver_recharge_type_gift => 'Kennaa';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Kaffaltii App Keessaa';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Kaffaltii Ajajaa';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Withdraw/baasuu';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Sirreeffama';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Koomishinii';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Mirgi Qopheessaa Seeraan Kan Eegame.';
  }

  @override
  String get wallet_activities_heading => 'Gochaalee';

  @override
  String get form_required_field_error => 'kan guutamuu qabu';

  @override
  String get button_report_issue => 'Rakkoo jiru gabaasaa';

  @override
  String get issue_submit_title => 'Rakkoo jiru gabaasaa';

  @override
  String get issue_subject_placeholder => 'Mata duree';

  @override
  String get error_field_cant_be_empty => 'Duwwaa ta\'uu hin danda\'u';

  @override
  String get issue_description_placeholder => 'Ibsa';

  @override
  String get complaint_submit_success_message => 'Koomiin keesan dhiyaateera. Maaloo waa\'ee gaaffii keessanii bakka bu\'aa deeggarsa keenyaa irraa quunnamtii eegaa.';

  @override
  String get menu_earnings => 'Galii';

  @override
  String get status_offline_description => 'imala/nama Yaabbachuu argachuuf online bana';

  @override
  String get status_online_description => 'Yaabbachuu barbaadaa jira';

  @override
  String get order_status_card_title_driver_accepted => 'Akkuma gahee jira kanjedhu tuqxaniin Abaan Imalaa nihubata';

  @override
  String get order_status_card_title_arrived => 'Imalaan beeksifameera';

  @override
  String get order_status_card_title_started => 'Gara bakka itti deemnutti qajeelaa jiru';

  @override
  String get navigation_dialog_title => 'Appii ittiin naannoftu filadhu';

  @override
  String get action_ride_options => 'Filannoo Yaabbannoo';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider expected you $minutes ago';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider expects you in $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'imaltuun hanga ammaatti kaffaltiin hin kaffalle';

  @override
  String get order_payment_status_paid => 'imaltuun kaffalee jira';

  @override
  String get action_ride_preferences => 'Filannoo imaltootaa';

  @override
  String get navigation_dialog_title_pickup_point => 'Gara bakka imaltuu fudhannaatti qajeeli';

  @override
  String get navigation_title_destination_point => 'Bakka imaltuun bu\'uutti qajeeli';

  @override
  String get rider_options_dialog_title => 'Filannoo imaltootaa';

  @override
  String get action_cancel_ride => 'Imala haqi';

  @override
  String get invoice_dialog_body => 'Akkasumas kaffaltii toora interneetii osoo hin taane maallaqa callaa argachuu dandeessu yoo ati fi barreessaan lamaan keessan fedhii qabaattan.';

  @override
  String get invoice_dialog_heading => 'Kaffaltii imaltootaa eegaa jira';

  @override
  String get invoice_dialog_title => 'Odeeffannoo Kaffaltii';

  @override
  String get invoice_item_tip => 'Moggaa/Tip';

  @override
  String get invoice_item_subtotal => 'Waliigala';

  @override
  String get add_credit_dialog_title => 'Credit cardii Galchi';

  @override
  String get add_credit_dialog_select_payment_method => 'Akkaataa Kaffaltii Filadhu:';

  @override
  String get add_credit_dialog_choose_amount => 'Hanga maallaqa filadhu';

  @override
  String get order_details_payment_method_title => 'Akkaataa Kaffaltii';

  @override
  String get order_payment_method_cash => 'Maalaqa Callaa';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Odeeffannoo Imala';

  @override
  String get issue_submit_body => 'Dhimma imaltuu keessan waliin qabdan kamiyyuu gabaasuu dandeessu. Dhimma kana irratti bilbila keessatti isin gargaarra.';

  @override
  String get announcements_empty_state_title => 'Ammatti Beeksisini hin jiru!';

  @override
  String get announcements_empty_state_body => 'Yeroo beeksisni haaraan dhufu isin beeksifna.';

  @override
  String get empty_state_title_no_record => 'Daataan Hin Argamne!';

  @override
  String get earnings_empty_state_body => 'Ulaagaa armaan olitti kaa\'ameen galmee tokkollee argachuu hin dandeenyu.';

  @override
  String get action_continue => 'Continue';

  @override
  String get terms_and_condition_first_part => 'Ani dubbisee walii galeera';

  @override
  String get terms_and_conditions_clickable_part => 'Haalawwanii fi Dambiiwwanii';

  @override
  String get onboarding_welcome => 'Baga nagaan dhuftan !';

  @override
  String get action_login_signup => 'Login / Galmaa\'i';

  @override
  String get action_complete_registration => 'Galmee guutuu';

  @override
  String get action_edit_submission => 'Dhiyeessii gulaali';

  @override
  String get incomplete_registration_description => 'Maaloo galmee \n kee guuti';

  @override
  String get pending_review_registration_description => 'Dhiyeessiin keessan gamaaggamaa jira, \n Obsa keessaniif galatoomaa.';

  @override
  String get hard_reject_registration => 'Dhiyeessiin keessan guutummaatti fudhatama dhabeera!';

  @override
  String get soft_rejection_description => 'Dhiyeessii irratti rakkoon jira';

  @override
  String get action_confirm_and_continue => 'Mirkaneessi & Itti fufi';

  @override
  String get ride_preferences_title => 'Filannoo Yaabbachuu';

  @override
  String get action_back => 'deebi’a';

  @override
  String get title_logout => 'Ba\'i';

  @override
  String get logout_dialog_body => 'Appilikeeshinii sana keessaa bahuu akka barbaaddu mirkaneeffadha?';

  @override
  String get action_delete_account => 'Herrega haquu';

  @override
  String get dialog_account_deletion_title => 'Herrega haquu';

  @override
  String get dialog_account_deletion_body => 'Akkaawuntii keessan haquu akka barbaaddan mirkanaa\'aadhaa? Akkaawuntii sana deebisuuf guyyoota 30 keessatti deebitanii seenuu dandeessa. Yeroo kana booda, daataa keessan guutummaatti ni haqama, creditii keessan kan hafe hunda dabalatee.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Wallet';
  }

  @override
  String get order_status_canceled => 'Haqameera';

  @override
  String get driver_register_title => 'Galmee Konkolaachisaa';

  @override
  String get menu_profile => 'Profaayilii koo';

  @override
  String get profile_services_title => 'Tajaajila:';

  @override
  String get profile_bank_information_title => 'Odeeffannoo Baankii';

  @override
  String get profile_vehicle_information_title => 'Odeeffannoo Konkolaataa';

  @override
  String get profile_distance_traveled => 'Fageenya imalame';

  @override
  String get profile_total_trips => 'Imala waliigalaa';

  @override
  String get profile_rating => 'Sadarkaa madaaluu';

  @override
  String get register_number_title => 'Enter your phone number';

  @override
  String get register_number_subtitle => 'We will send a code to your number to continue registration';

  @override
  String get register_verify_code_title => 'Enter code';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'We have sent a code to $number';
  }

  @override
  String get register_contact_details_title => 'Enter your contact details';

  @override
  String get register_payout_details_title => 'Enter your payout details';

  @override
  String get register_ride_details_title => 'Enter your ride details';

  @override
  String get register_profile_photo_title => 'Upload Profile Photo';

  @override
  String get register_profile_photo_subtitle => 'Your face should be recognizable in the uploaded image';

  @override
  String get action_add_photo => 'Add photo';

  @override
  String get register_upload_documents_title => 'Upload required documents';

  @override
  String get register_upload_documents_subtitle => 'In order to verify your identity and comply with regulations we will need you to upload below documents: \n1-Photo ID\n2-Driver license\n3-Ride ownership document';

  @override
  String get register_step_phone_number => 'Cell Number';

  @override
  String get register_step_verify_number => 'Verify Number';

  @override
  String get register_step_contact_details => 'Contact details';

  @override
  String get register_step_ride_details => 'Ride details';

  @override
  String get register_step_payout_details => 'Payout Details';

  @override
  String get register_step_upload_documents => 'Upload Documents';

  @override
  String get profile_uploaded_documents_title => 'Uploaded documents';

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
