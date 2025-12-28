import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class SHi extends S {
  SHi([String locale = 'hi']) : super(locale);

  @override
  String get statusOffline => 'ऑनलाइन जाओ';

  @override
  String get statusOnline => 'ऑफ़ लाइन हो जाओ';

  @override
  String get message_notification_permission_title => 'अधिसूचना अनुमति';

  @override
  String get message_notification_permission_denined_message => 'अधिसूचना की अनुमति पहले अस्वीकार कर दी गई थी। नई ऑर्डर सूचनाएं प्राप्त करने के लिए, आप ऐप सेटिंग से अनुमति को सक्षम कर सकते हैं।';

  @override
  String get action_ok => 'ठीक है';

  @override
  String get menu_logout => 'लॉग आउट';

  @override
  String get menu_about => 'के बारे में';

  @override
  String get menu_wallet => 'बटुआ';

  @override
  String get menu_trip_history => 'यात्रा इतिहास';

  @override
  String get menu_announcements => 'घोषणाओं';

  @override
  String get message_unknown_error => 'अज्ञात त्रुटि';

  @override
  String get title_success => 'सफलता';

  @override
  String get driver_register_profile_submitted_message => 'आपका प्रोफ़ाइल व्यवस्थापक अनुमोदन के लिए सबमिट किया गया है। अपने सबमिशन की स्थिति देखने के लिए आप बाद में वापस देख सकते हैं।';

  @override
  String get driver_registration_approved_demo_mode => 'आम तौर पर, इस स्तर पर व्यवस्थापक को व्यवस्थापक पैनल से ड्राइवर के सबमिशन को अनुमोदित करने की आवश्यकता होगी। हालांकि, डेमो के लिए, आपकी प्रोफ़ाइल अब स्वचालित रूप से स्वीकृत हो गई है और उपयोग के लिए तैयार है।';

  @override
  String get title_important => 'महत्वपूर्ण!';

  @override
  String get cell_number => 'मोबाइल नम्बर';

  @override
  String get phone_number_empty => 'कृपया फ़ोन नंबर दर्ज करें';

  @override
  String get driver_registration_step_verify_number_title => 'नंबर सत्यापित करें';

  @override
  String get driver_register_verification_code_textfield_hint => 'पुष्टि संख्या';

  @override
  String get driver_register_contact_details_title => 'सम्पर्क करने का विवरण';

  @override
  String get firstname => 'पहला नाम';

  @override
  String get lastname => 'उपनाम';

  @override
  String get email => 'ईमेल';

  @override
  String get certificate_number => 'सर्टिफिकेट नंबर';

  @override
  String get gender => 'लिंग';

  @override
  String get gender_male => 'पुरुष';

  @override
  String get gender_female => 'मादा';

  @override
  String get address => 'पता';

  @override
  String get driver_register_ride_details_step_title => 'सवारी विवरण';

  @override
  String get plate_number => 'थाली संख्या';

  @override
  String get car_production_year => 'उत्पादन वर्ष';

  @override
  String get car_model => 'कार के मॉडल';

  @override
  String get car_color => 'कार का रंग';

  @override
  String get driver_register_step_payout_details_title => 'भुगतान विवरण';

  @override
  String get bank_name => 'बैंक का नाम';

  @override
  String get account_number => 'खाता संख्या';

  @override
  String get bank_swift => 'बैंक स्विफ्ट';

  @override
  String get bankRoutingNumber => 'अधिकोष क्रम संख्या';

  @override
  String get driver_register_step_documents_title => 'दस्तावेज़';

  @override
  String get driver_register_step_documents_heading => 'उपरोक्त दस्तावेजों को सत्यापित करने के लिए, हमें नीचे दिए गए दस्तावेजों को अपलोड करने की आवश्यकता है';

  @override
  String get driver_register_document_first => '1-आईडी';

  @override
  String get driver_register_document_second => '2-चालक लाइसेंस';

  @override
  String get driver_register_document_third => '3-सवारी का स्वामित्व दस्तावेज़';

  @override
  String get action_upload_document => 'दस्तावेज़ अपलोड करें';

  @override
  String get trip_history_empty_state => 'पिछले कोई आदेश दर्ज नहीं किया गया है।';

  @override
  String get wallet_empty_state_message => 'कोई इतिहास दर्ज नहीं है।';

  @override
  String get enum_unknown => 'अनजान';

  @override
  String get top_up_sheet_pay_button => 'भुगतान करना';

  @override
  String get loading => 'लोड हो रहा है';

  @override
  String get available_order_action_accept => 'आदेश स्वीकार करें';

  @override
  String get order_status_action_received_cash => 'नकद भुगतान प्राप्त';

  @override
  String get action_cancel => 'रद्द करना';

  @override
  String get order_status_action_navigate => 'नेविगेट';

  @override
  String get order_status_action_arrived => 'पहुंच गए';

  @override
  String get order_status_action_start => 'यात्रा शुरू करें';

  @override
  String get order_status_action_finished => 'खत्म करना';

  @override
  String get message_cant_open_url => 'कमांड समर्थित नहीं है';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'बैंक ट्रांसफर';

  @override
  String get enum_driver_recharge_type_gift => 'उपहार';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'इन-ऐप भुगतान';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'आदेश शुल्क';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'वापस लेना';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'सुधार';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'आयोग';

  @override
  String copyright_notice(Object company) {
    return 'कॉपीराइट © $company, सर्वाधिकार सुरक्षित।';
  }

  @override
  String get wallet_activities_heading => 'गतिविधियां';

  @override
  String get form_required_field_error => 'आवश्यक क्षेत्र';

  @override
  String get button_report_issue => 'मामले की रिपोर्ट करें';

  @override
  String get issue_submit_title => 'मामले की रिपोर्ट करें';

  @override
  String get issue_subject_placeholder => 'विषय';

  @override
  String get error_field_cant_be_empty => 'खाली नहीं किया जा सकता';

  @override
  String get issue_description_placeholder => 'विवरण';

  @override
  String get complaint_submit_success_message => 'शिकायत प्रस्तुत की जाती है। कृपया अपनी पूछताछ के बारे में हमारे समर्थन प्रतिनिधि के संपर्क की प्रतीक्षा करें।';

  @override
  String get menu_earnings => 'आय';

  @override
  String get status_offline_description => 'अनुरोध देखने के लिए ऑनलाइन हो जाएं';

  @override
  String get status_online_description => 'सवारी के लिए खोज रहे हैं';

  @override
  String get order_status_card_title_driver_accepted => 'आपके आगमन पर टैप करते ही राइडर को सूचित कर दिया जाएगा';

  @override
  String get order_status_card_title_arrived => 'राइडर को सूचित कर दिया गया है';

  @override
  String get order_status_card_title_started => 'गंतव्य की ओर जा रहे हैं';

  @override
  String get navigation_dialog_title => 'नेविगेट करने के लिए एक ऐप चुनें';

  @override
  String get action_ride_options => 'सवारी विकल्प';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'राइडर ने आपसे $minutes पहले उम्मीद की थी';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'राइडर आपसे $minutes में उम्मीद करता है';
  }

  @override
  String get order_payment_status_unpaid => 'सवारी का भुगतान अभी तक नहीं किया गया है';

  @override
  String get order_payment_status_paid => 'राइडर का भुगतान किया गया है';

  @override
  String get action_ride_preferences => 'राइडर वरीयताएँ';

  @override
  String get navigation_dialog_title_pickup_point => 'पिकअप पॉइंट पर नेविगेट करें';

  @override
  String get navigation_title_destination_point => 'ड्रॉप ऑफ पॉइंट पर नेविगेट करें';

  @override
  String get rider_options_dialog_title => 'सवारी विकल्प';

  @override
  String get action_cancel_ride => 'सवारी रद्द करें';

  @override
  String get invoice_dialog_body => 'आप ऑनलाइन भुगतान के बदले नकद भी प्राप्त कर सकते हैं यदि आप और लेखक दोनों इसके लिए तैयार हैं।';

  @override
  String get invoice_dialog_heading => 'सवार भुगतान की प्रतीक्षा कर रहा है';

  @override
  String get invoice_dialog_title => 'भुगतान की जानकारी';

  @override
  String get invoice_item_tip => 'बख्शीश';

  @override
  String get invoice_item_subtotal => 'उप-योग';

  @override
  String get add_credit_dialog_title => 'क्रेडिट जोड़ने';

  @override
  String get add_credit_dialog_select_payment_method => 'भुगतान का तरीका चुनें:';

  @override
  String get add_credit_dialog_choose_amount => 'राशि चुनें';

  @override
  String get order_details_payment_method_title => 'भुगतान का तरीका';

  @override
  String get order_payment_method_cash => 'नकद';

  @override
  String get order_payment_method_online => 'ऑनलाइन';

  @override
  String get order_details_trip_information_title => 'यात्रा की जानकारी';

  @override
  String get issue_submit_body => 'आप अपनी सवारी के साथ किसी भी समस्या की रिपोर्ट कर सकते हैं। हम एक कॉल के भीतर इस मुद्दे के साथ आपकी मदद करेंगे।';

  @override
  String get announcements_empty_state_title => 'अभी तक कोई घोषणा नहीं!';

  @override
  String get announcements_empty_state_body => 'नई घोषणाएं आने पर हम आपको सूचित करेंगे।';

  @override
  String get empty_state_title_no_record => 'कोई डेटा नहीं मिला!';

  @override
  String get earnings_empty_state_body => 'ऊपर निर्धारित मानदंडों पर, हमें कोई रिकॉर्ड नहीं मिल रहा है।';

  @override
  String get action_continue => 'जारी रखना';

  @override
  String get terms_and_condition_first_part => 'मैंने पढ़ा है और इससे सहमत हूं';

  @override
  String get terms_and_conditions_clickable_part => 'नियम एवं शर्तें';

  @override
  String get onboarding_welcome => 'स्वागत !';

  @override
  String get action_login_signup => 'साइन अप करने के लिए लॉग इन करें';

  @override
  String get action_complete_registration => 'पूरा पंजीकरण';

  @override
  String get action_edit_submission => 'सबमिशन संपादित करें';

  @override
  String get incomplete_registration_description => 'कृपया अपना पूरा करें\n पंजीकरण प्रस्तुत करना';

  @override
  String get pending_review_registration_description => 'आपके सबमिशन की समीक्षा की जा रही है,\n धैर्य के लिए धन्यवाद।';

  @override
  String get hard_reject_registration => 'आपका सबमिशन पूरी तरह से खारिज कर दिया गया है!';

  @override
  String get soft_rejection_description => 'सबमिशन में समस्या है';

  @override
  String get action_confirm_and_continue => 'पुष्टि करें और जारी रखें';

  @override
  String get ride_preferences_title => 'सवारी वरीयताएँ';

  @override
  String get action_back => 'पीछे';

  @override
  String get title_logout => 'लॉग आउट';

  @override
  String get logout_dialog_body => 'क्या आप वाकई एप्लिकेशन से लॉग आउट करना चाहते हैं?';

  @override
  String get action_delete_account => 'खाता हटा दो';

  @override
  String get dialog_account_deletion_title => 'खाता हटाना';

  @override
  String get dialog_account_deletion_body => 'क्या आप इस खाते को हटाने के लिए सुनिश्चित हैं? आप खाते को पुनर्स्थापित करने के लिए 30 दिनों के भीतर फिर से लॉग इन कर सकते हैं। इस अवधि के बाद, आपका डेटा पूरी तरह से हटा दिया जाता है, जिसमें आपके सभी शेष क्रेडिट शामिल हैं।';

  @override
  String wallet_card_title(Object appName) {
    return '$appName वॉलेट';
  }

  @override
  String get order_status_canceled => 'रद्द';

  @override
  String get driver_register_title => 'चालक पंजीकरण';

  @override
  String get menu_profile => 'मेरी प्रोफाइल';

  @override
  String get profile_services_title => 'सेवाएं:';

  @override
  String get profile_bank_information_title => 'बैंक जानकारी';

  @override
  String get profile_vehicle_information_title => 'वाहन की जानकारी';

  @override
  String get profile_distance_traveled => 'तय की गई दूरी';

  @override
  String get profile_total_trips => 'कुल यात्राएं';

  @override
  String get profile_rating => 'रेटिंग';

  @override
  String get register_number_title => 'अपना दूरभाष क्रमांक दर्ज करें';

  @override
  String get register_number_subtitle => 'पंजीकरण जारी रखने के लिए हम आपके नंबर पर एक कोड भेजेंगे';

  @override
  String get register_verify_code_title => 'कोड दर्ज करें';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'हमने $number पर एक कोड भेजा है';
  }

  @override
  String get register_contact_details_title => 'अपना संपर्क विवरण दर्ज करें';

  @override
  String get register_payout_details_title => 'अपना पेआउट विवरण दर्ज करें';

  @override
  String get register_ride_details_title => 'अपनी सवारी का विवरण दर्ज करें';

  @override
  String get register_profile_photo_title => 'प्रोफाइल फोटो अपलोड करें';

  @override
  String get register_profile_photo_subtitle => 'अपलोड की गई छवि में आपका चेहरा पहचानने योग्य होना चाहिए';

  @override
  String get action_add_photo => 'तस्वीर जोड़ो';

  @override
  String get register_upload_documents_title => 'आवश्यक दस्तावेज अपलोड करें';

  @override
  String get register_upload_documents_subtitle => 'आपकी पहचान सत्यापित करने और नियमों का पालन करने के लिए हमें आपको नीचे दिए गए दस्तावेज़ अपलोड करने होंगे: \\n1-फ़ोटो आईडी\\n2-चालक लाइसेंस\\n3-सवारी स्वामित्व दस्तावेज़';

  @override
  String get register_step_phone_number => 'मोबाइल नम्बर';

  @override
  String get register_step_verify_number => 'नंबर सत्यापित करें';

  @override
  String get register_step_contact_details => 'संपर्क विवरण';

  @override
  String get register_step_ride_details => 'सवारी विवरण';

  @override
  String get register_step_payout_details => 'भुगतान विवरण';

  @override
  String get register_step_upload_documents => 'दस्तावेज़ अपलोड करें';

  @override
  String get profile_uploaded_documents_title => 'अपलोड किए गए दस्तावेज़';

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
