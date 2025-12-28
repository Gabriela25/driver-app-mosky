import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class SAm extends S {
  SAm([String locale = 'am']) : super(locale);

  @override
  String get statusOffline => 'ኦንላይን ይግቡ';

  @override
  String get statusOnline => 'ይዝጉ/Off.';

  @override
  String get message_notification_permission_title => 'የማሳወቂያ ፍቃድ';

  @override
  String get message_notification_permission_denined_message => 'የማሳወቂያ ፍቃድ ቀደም ብሎ ተከልክሏል። አዲስ የትዕዛዝ ማሳወቂያዎችን ለማግኘት ከመተግበሪያ ቅንብሮች ፈቃዱን ማንቃት ይችላሉ።';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'ይውጡ';

  @override
  String get menu_about => 'ስለ እኛ';

  @override
  String get menu_wallet => 'ዋሌት';

  @override
  String get menu_trip_history => 'የጉዞ ታሪክ';

  @override
  String get menu_announcements => 'ማስታወቂያዎች';

  @override
  String get message_unknown_error => 'ያልታወቀ ስህተት';

  @override
  String get title_success => 'Success';

  @override
  String get driver_register_profile_submitted_message => 'ፕሮፋይልዎ ለአስተዳዳሪ ለመጽደቅ ገብቷል። ያቀረቡትን ሁኔታ ለማየት ቆይተው ማየት ይችላሉ።';

  @override
  String get driver_registration_approved_demo_mode => 'በተለምዶ፣ በዚህ ደረጃ አስተዳዳሪ የአሽከርካሪውን ከአስተዳዳሪ ፓነል ማጽደቅ አለበት። እባክዎን በማንኛውም ጊዜ በ +251913818893 ይደውሉ ዎይም በኢ፟መይል አድራሻችን ይፃፉልን siadali123@gmail.com';

  @override
  String get title_important => 'ጠቃሚ';

  @override
  String get cell_number => 'ስልክ ቁጥር';

  @override
  String get phone_number_empty => 'እባኮትን ስልክ ቁጥሩን ያስገቡ';

  @override
  String get driver_registration_step_verify_number_title => 'ቁጥር ያረጋግጡ';

  @override
  String get driver_register_verification_code_textfield_hint => 'የማረጋገጫ የሚስጥር ቁጥር';

  @override
  String get driver_register_contact_details_title => 'የአድራሻ ዝርዝሮች';

  @override
  String get firstname => 'የመጀመሪያ ስም';

  @override
  String get lastname => 'የአባት ስም';

  @override
  String get email => 'ኢ-ሜይል';

  @override
  String get certificate_number => 'የመንጃ ፍቃድ ቁጥር';

  @override
  String get gender => 'ፆታ';

  @override
  String get gender_male => 'ወንድ';

  @override
  String get gender_female => 'ሴት';

  @override
  String get address => 'አድራሻ';

  @override
  String get driver_register_ride_details_step_title => 'የጉዞ ዝርዝሮች';

  @override
  String get plate_number => 'የሰሌዳ ቁጥር';

  @override
  String get car_production_year => 'የምርት ዓመት';

  @override
  String get car_model => 'የመኪና ሞዴል';

  @override
  String get car_color => 'የመኪና ቀለም';

  @override
  String get driver_register_step_payout_details_title => 'የክፍያ ዝርዝሮች';

  @override
  String get bank_name => 'የባንክ ስም';

  @override
  String get account_number => 'አካዉንት ቁጥር';

  @override
  String get bank_swift => 'የባንክ ስዊፍት';

  @override
  String get bankRoutingNumber => 'የባንክ መስመር ቁጥር';

  @override
  String get driver_register_step_documents_title => 'ሰነዶች';

  @override
  String get driver_register_step_documents_heading => 'ከላይ ያሉትን ሰነዶች ለማረጋገጥ ከታች የሚሰቀሉ ሰነዶችን እንፈልጋለን';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-የመንጃ ፍቃድ';

  @override
  String get driver_register_document_third => '3-Ride\'s ባለቤትነት ሰነድ';

  @override
  String get action_upload_document => 'ሰነድ ስቀል';

  @override
  String get trip_history_empty_state => 'ያለፈ ትእዛዝ አልተመዘገበም።';

  @override
  String get wallet_empty_state_message => 'ምንም ታሪክ አልተመዘገበም።';

  @override
  String get enum_unknown => 'የማይታወቅ';

  @override
  String get top_up_sheet_pay_button => 'ይክፈሉ';

  @override
  String get loading => 'በመጫን ላይ';

  @override
  String get available_order_action_accept => 'ትዕዛዝ ተቀበል';

  @override
  String get order_status_action_received_cash => 'የገንዘብ ክፍያ ተቀብሏል።';

  @override
  String get action_cancel => 'ሰርዝ';

  @override
  String get order_status_action_navigate => 'Navigate';

  @override
  String get order_status_action_arrived => 'ደሪሻሎው';

  @override
  String get order_status_action_start => 'ጉዞ ጀምር';

  @override
  String get order_status_action_finished => 'ይጨርሱ';

  @override
  String get message_cant_open_url => 'ትዕዛዝ አይደገፍም።';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'በባንክ ማስተላለፍ';

  @override
  String get enum_driver_recharge_type_gift => 'ስጦታ';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'የውስጠ-መተግበሪያ ክፍያ';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'የክፍያ ትዕዛዝ';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Withdraw';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'እርማት';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'ኮሚሽን';

  @override
  String copyright_notice(Object company) {
    return 'የቅጂ መብት © $company, መብቱ በህግ የተጠበቀ ነው።';
  }

  @override
  String get wallet_activities_heading => 'ተግባራት';

  @override
  String get form_required_field_error => 'መሞላት ያለበት';

  @override
  String get button_report_issue => 'ችግርን ሪፖርት ያድርጉ';

  @override
  String get issue_submit_title => 'ችግርን ሪፖርት ያድርጉ';

  @override
  String get issue_subject_placeholder => 'ርዕሰ ጉዳይ';

  @override
  String get error_field_cant_be_empty => 'ባዶ መሆን አይቻልም';

  @override
  String get issue_description_placeholder => 'መግለጫ';

  @override
  String get complaint_submit_success_message => 'ቅሬታ ቀርቧል። እባክዎን ስለጥያቄዎ የድጋፍ ወኪላችንን ለማግኘት ይጠብቁ።';

  @override
  String get menu_earnings => 'ገቢዎ';

  @override
  String get status_offline_description => 'የጉዞ ትዛዞችን ለመቀበል ኦላይን ይግቡ/ አገልግሎት መስጠት ይጀምሩ።';

  @override
  String get status_online_description => 'ትጓዥ በመፈለግ ላይ';

  @override
  String get order_status_card_title_driver_accepted => 'ደሪሻሎው የሚለውን ስጫኑ ለተሳፋሪዉ ማሳወቂያ ይደርሰዋል።';

  @override
  String get order_status_card_title_arrived => 'ተሳፋሪው ማሳወቂያ ደርሶታል።';

  @override
  String get order_status_card_title_started => 'ወደ መድረሻው በመሄድ ላይ';

  @override
  String get navigation_dialog_title => 'የሚሄዱበትን መተግበሪያ ይምረጡ';

  @override
  String get action_ride_options => 'የጉዞ አማራጮች';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider expected you $minutes ago';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider expects you in $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'ጉዞ እስካሁን አልተከፈለም።';

  @override
  String get order_payment_status_paid => 'የጉዞው ህሳብ ተከፍሏል';

  @override
  String get action_ride_preferences => 'የአሽከርካሪ ምርጫዎች';

  @override
  String get navigation_dialog_title_pickup_point => 'ወደ መውሰጃ ቦታ ሂድ';

  @override
  String get navigation_title_destination_point => 'ወደ መውረጃ ነጥብ ሂድ';

  @override
  String get rider_options_dialog_title => 'የጉዞ አማራጮች';

  @override
  String get action_cancel_ride => 'ጉዞ ይሰርዙ';

  @override
  String get invoice_dialog_body => 'እርስዎ እና ተሳፋሪዉ ሁለታችሁም ፈቃደኛ ከሆናችሁ በመስመር ላይ ክፍያ ምትክ ጥሬ ገንዘብ መቀበል ትችላላችሁ።';

  @override
  String get invoice_dialog_heading => 'ክፍያ በመጠበቅ ላይ';

  @override
  String get invoice_dialog_title => 'የክፍያ መረጃ';

  @override
  String get invoice_item_tip => 'ትፕ';

  @override
  String get invoice_item_subtotal => 'አጠቃላይ';

  @override
  String get add_credit_dialog_title => 'ክሬዲት ይጨምሩ';

  @override
  String get add_credit_dialog_select_payment_method => 'የመክፈያ ዘዴን ይምረጡ፡-';

  @override
  String get add_credit_dialog_choose_amount => 'መጠን ይምረጡ';

  @override
  String get order_details_payment_method_title => 'የመክፈያ ዘዴ';

  @override
  String get order_payment_method_cash => 'ጥሬ ገንዘብ';

  @override
  String get order_payment_method_online => 'ኦንላይን';

  @override
  String get order_details_trip_information_title => 'የጉዞ መረጃ';

  @override
  String get issue_submit_body => 'በጉዞዎ ላይ ያለዎትን ማንኛውንም ችግር ሪፖርት ማድረግ ይችላሉ። በጉዳዩ ላይ በጥሪ እንረዳዎታለን።';

  @override
  String get announcements_empty_state_title => 'እስካሁን ምንም ማስታወቂያዎች የሉም!';

  @override
  String get announcements_empty_state_body => 'አዲስ ማስታወቂያዎች ሲመጡ እናሳውቅዎታለን።';

  @override
  String get empty_state_title_no_record => 'ምንም አይነት መረጃ አልተገኘም!';

  @override
  String get earnings_empty_state_body => 'ከላይ በተቀመጠው መስፈርት ምንም አይነት መዝገቦችን ማግኘት አልቻልንም።';

  @override
  String get action_continue => 'ይቀጥሉ';

  @override
  String get terms_and_condition_first_part => 'አንብቤ ተስማምቻለሁ ';

  @override
  String get terms_and_conditions_clickable_part => 'ውሎች እና ሁኔታዎች';

  @override
  String get onboarding_welcome => 'እንኳን ደህና መጣህ !';

  @override
  String get action_login_signup => 'ይግቡ / ይመዝገቡ';

  @override
  String get action_complete_registration => 'የተሟላ ምዝገባ';

  @override
  String get action_edit_submission => 'የተላኩትን መርጃ ያሪሙ';

  @override
  String get incomplete_registration_description => 'እባክዎን ያጠናቅቁ \n የምዝገባ አቀራረቡን';

  @override
  String get pending_review_registration_description => 'ያስገቡት በግምገማ ላይ ነው፣ \n ለትዕግስት እናመሰግናለን።';

  @override
  String get hard_reject_registration => 'ያስገቡት ሙሉ በሙሉ ተቀባይነት አላገኘም!';

  @override
  String get soft_rejection_description => 'የላኩት መርጃ ላይ ችግር አለ።';

  @override
  String get action_confirm_and_continue => 'ያረጋግጡ እና ይቀጥሉ';

  @override
  String get ride_preferences_title => 'የተሳፋሪ ምርጫዎች';

  @override
  String get action_back => 'ወደ ኋላ';

  @override
  String get title_logout => 'ይውጡ';

  @override
  String get logout_dialog_body => 'እርግጠኛ ነዎት ከመተግበሪያው መውጣት ይፈልጋሉ?';

  @override
  String get action_delete_account => 'መለያ ሰረዛ';

  @override
  String get dialog_account_deletion_title => 'መለያ ሰረዛ';

  @override
  String get dialog_account_deletion_body => 'እርግጠኛ ነህ መለያህን መሰረዝ ትፈልጋለህ? መለያውን ወደነበረበት ለመመለስ በ30 ቀናት ውስጥ እንደገና መግባት ይችላሉ። ከዚህ ጊዜ በኋላ፣ ሁሉንም ቀሪ ክሬዲቶችዎን ጨምሮ ሙሉ በሙሉ ይወገዳል።';

  @override
  String wallet_card_title(Object appName) {
    return '$appName ዋሌት';
  }

  @override
  String get order_status_canceled => 'ተሰርዟል።';

  @override
  String get driver_register_title => 'የአሽከርካሪዎች ምዝገባ';

  @override
  String get menu_profile => 'የግል ማህደሬ';

  @override
  String get profile_services_title => 'አገልግሎቶች፡';

  @override
  String get profile_bank_information_title => 'የባንክ መረጃ';

  @override
  String get profile_vehicle_information_title => 'የመኪና መረጃ';

  @override
  String get profile_distance_traveled => 'የተጓዙት ርቅት';

  @override
  String get profile_total_trips => 'ጠቅላላ ጉዞዎች';

  @override
  String get profile_rating => 'ደረጃ መስጠት';

  @override
  String get register_number_title => 'Մուտքագրեք ձեր հեռախոսահամարը';

  @override
  String get register_number_subtitle => 'Մենք կուղարկենք ձեր համարին կոդ, որը անցնում է գրանցման գործընթացը';

  @override
  String get register_verify_code_title => 'Մուտքագրեք կոդը';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Մենք ուղարկել ենք կոդ $number համարին';
  }

  @override
  String get register_contact_details_title => 'Մուտքագրեք ձեր կոնտակտային տվյալները';

  @override
  String get register_payout_details_title => 'Մուտքագրեք ձեր վճարման մանրամասները';

  @override
  String get register_ride_details_title => 'Մուտքագրեք ձեր նախագծի մանրամասները';

  @override
  String get register_profile_photo_title => 'Վերբեռնեք Պրոֆիլի նկարը';

  @override
  String get register_profile_photo_subtitle => 'Ձեր դեմքը պետք է հատկանի լինի վերբեռնված նկարում';

  @override
  String get action_add_photo => 'Ավելացնել նկար';

  @override
  String get register_upload_documents_title => 'Վերբեռնեք պարտադիր փաստաթղթերը';

  @override
  String get register_upload_documents_subtitle => 'Դուք պետք է վերբեռնեք հետևյալ փաստաթղթերը, որոնք հաստատում են ձեր անձնականությունը և համաձայնության պայմաններին: \n1-Ֆոտո ID\n2-Վարորդական լիցենզիա\n3-Վարորդականի պատրաստման փաստաթուղթ';

  @override
  String get register_step_phone_number => 'Հեռախոսահամար';

  @override
  String get register_step_verify_number => 'Հաստատել համարը';

  @override
  String get register_step_contact_details => 'Կոնտակտային տվյալներ';

  @override
  String get register_step_ride_details => 'Նախագծի մանրամասներ';

  @override
  String get register_step_payout_details => 'Վճարման մանրամասներ';

  @override
  String get register_step_upload_documents => 'Վերբեռնել փաստաթղթեր';

  @override
  String get profile_uploaded_documents_title => 'Վերբեռնված փաստաթղթեր';

  @override
  String get error_cancel_not_allowed => 'Չի թույլատրվում չեղարկել արդեն սկսված ճանապարհը';

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
  String get settings => 'Կարգավորումներ';

  @override
  String get mapSettings => 'Քարտեզի կարգավորումներ';

  @override
  String get languageSettings => 'Լեզվի կարգավորումներ';

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
