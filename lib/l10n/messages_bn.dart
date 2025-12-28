import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class SBn extends S {
  SBn([String locale = 'bn']) : super(locale);

  @override
  String get statusOffline => 'অনলাইন যান';

  @override
  String get statusOnline => '্বেতব';

  @override
  String get message_notification_permission_title => 'বিজ্ঞপ্তির অনুমতি';

  @override
  String get message_notification_permission_denined_message => 'বিজ্ঞপ্তি অনুমতি আগে অস্বীকার করা হয়েছে. নতুন অর্ডার বিজ্ঞপ্তি পেতে, আপনি অ্যাপ সেটিংস থেকে অনুমতি সক্ষম করতে পারেন।';

  @override
  String get action_ok => 'ঠিক আছে';

  @override
  String get menu_logout => 'প্রস্থান';

  @override
  String get menu_about => 'সম্পর্কিত';

  @override
  String get menu_wallet => 'ওয়ালেট';

  @override
  String get menu_trip_history => 'ভ্রমণের ইতিহাস';

  @override
  String get menu_announcements => 'ঘোষণা';

  @override
  String get message_unknown_error => 'অজানা ত্রুটি';

  @override
  String get title_success => 'সফলতা';

  @override
  String get driver_register_profile_submitted_message => 'আপনার প্রোফাইল অ্যাডমিন অনুমোদনের জন্য জমা দেওয়া হয়েছে. আপনার জমা দেওয়ার স্থিতি দেখতে আপনি পরে আবার চেক করতে পারেন।';

  @override
  String get driver_registration_approved_demo_mode => 'সাধারণত, এই পর্যায়ে অ্যাডমিনকে অ্যাডমিন প্যানেল থেকে ড্রাইভারের জমা অনুমোদন করতে হবে। যাইহোক, ডেমোর জন্য, আপনার প্রোফাইল এখন স্বয়ংক্রিয়ভাবে অনুমোদিত এবং ব্যবহারের জন্য প্রস্তুত।';

  @override
  String get title_important => 'গুরুত্বপূর্ণ!';

  @override
  String get cell_number => 'সেল নম্বর';

  @override
  String get phone_number_empty => 'ফোন নম্বর লিখুন';

  @override
  String get driver_registration_step_verify_number_title => 'নম্বর যাচাই করুন';

  @override
  String get driver_register_verification_code_textfield_hint => 'যাচাইকরণ কোড';

  @override
  String get driver_register_contact_details_title => 'যোগাযোগের ঠিকানা';

  @override
  String get firstname => 'নামের প্রথম অংশ';

  @override
  String get lastname => 'নামের শেষাংশ';

  @override
  String get email => 'ই-মেইল';

  @override
  String get certificate_number => 'শংসাপত্র সংখ্যা';

  @override
  String get gender => 'লিঙ্গ';

  @override
  String get gender_male => 'পুরুষ';

  @override
  String get gender_female => 'মহিলা';

  @override
  String get address => 'ঠিকানা';

  @override
  String get driver_register_ride_details_step_title => 'রাইডের বিবরণ';

  @override
  String get plate_number => 'প্লেট নম্বর';

  @override
  String get car_production_year => 'উৎপাদন বছর';

  @override
  String get car_model => 'গাড়ির মডেল';

  @override
  String get car_color => 'গাড়ির রঙ';

  @override
  String get driver_register_step_payout_details_title => 'পেআউট বিবরণ';

  @override
  String get bank_name => 'ব্যাংকের নাম';

  @override
  String get account_number => 'হিসাব নাম্বার';

  @override
  String get bank_swift => 'ব্যাংক সুইফট';

  @override
  String get bankRoutingNumber => 'ব্যাঙ্ক রাউটিং নম্বর';

  @override
  String get driver_register_step_documents_title => 'নথিপত্র';

  @override
  String get driver_register_step_documents_heading => 'উপরের নথিগুলি যাচাই করার জন্য, আমাদের নিচের নথিগুলি আপলোড করা প্রয়োজন৷';

  @override
  String get driver_register_document_first => '1-আইডি';

  @override
  String get driver_register_document_second => '2-ড্রাইভার লাইসেন্স';

  @override
  String get driver_register_document_third => '3-রাইডের মালিকানা দলিল';

  @override
  String get action_upload_document => 'নথি আপলোড করুন';

  @override
  String get trip_history_empty_state => 'কোন অতীত আদেশ রেকর্ড করা হয়েছে.';

  @override
  String get wallet_empty_state_message => 'কোন ইতিহাস নথিভুক্ত.';

  @override
  String get enum_unknown => 'অজানা';

  @override
  String get top_up_sheet_pay_button => 'বেতন';

  @override
  String get loading => 'লোড হচ্ছে';

  @override
  String get available_order_action_accept => 'অর্ডার গ্রহণ করুন';

  @override
  String get order_status_action_received_cash => 'নগদ পেমেন্ট প্রাপ্ত';

  @override
  String get action_cancel => 'বাতিল করুন';

  @override
  String get order_status_action_navigate => 'নেভিগেট করুন';

  @override
  String get order_status_action_arrived => 'পৌঁছেছে';

  @override
  String get order_status_action_start => 'ট্রিপ শুরু করুন';

  @override
  String get order_status_action_finished => 'শেষ করুন';

  @override
  String get message_cant_open_url => 'কমান্ড সমর্থিত নয়';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'ব্যাংক লেনদেন';

  @override
  String get enum_driver_recharge_type_gift => 'উপহার';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'ইন-অ্যাপ পেমেন্ট';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'অর্ডার ফি';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'প্রত্যাহার করুন';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'সংশোধন';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'কমিশন';

  @override
  String copyright_notice(Object company) {
    return 'কপিরাইট © $company, সর্বস্বত্ব সংরক্ষিত৷';
  }

  @override
  String get wallet_activities_heading => 'কার্যক্রম';

  @override
  String get form_required_field_error => 'প্রয়োজনীয় ক্ষেত্র';

  @override
  String get button_report_issue => 'একটি সমস্যা রিপোর্ট';

  @override
  String get issue_submit_title => 'একটি সমস্যা রিপোর্ট';

  @override
  String get issue_subject_placeholder => 'বিষয়';

  @override
  String get error_field_cant_be_empty => 'খালি হতে পারেনা';

  @override
  String get issue_description_placeholder => 'বর্ণনা';

  @override
  String get complaint_submit_success_message => 'অভিযোগ জমা হয়। আপনার অনুসন্ধান সম্পর্কে আমাদের সহায়তা প্রতিনিধির কাছ থেকে একটি যোগাযোগের জন্য অনুগ্রহ করে অপেক্ষা করুন।';

  @override
  String get menu_earnings => 'আয়';

  @override
  String get status_offline_description => 'অনুরোধগুলি দেখতে অনলাইন পান';

  @override
  String get status_online_description => 'যাত্রার জন্য অনুসন্ধান করা হচ্ছে';

  @override
  String get order_status_card_title_driver_accepted => 'আপনি পৌঁছেছেন ট্যাপ করার পরে রাইডারকে জানানো হবে';

  @override
  String get order_status_card_title_arrived => 'রাইডারকে অবহিত করা হয়েছে';

  @override
  String get order_status_card_title_started => 'গন্তব্যের দিকে যাচ্ছে';

  @override
  String get navigation_dialog_title => 'নেভিগেট করার জন্য একটি অ্যাপ বেছে নিন';

  @override
  String get action_ride_options => 'রাইড অপশন';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'রাইডার আপনাকে $minutes আগে আশা করেছিল';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'রাইডার আপনাকে $minutes মধ্যে আশা করবে';
  }

  @override
  String get order_payment_status_unpaid => 'রাইড এখনও পরিশোধ করা হয়নি';

  @override
  String get order_payment_status_paid => 'রাইডারকে অর্থ প্রদান করা হয়েছে';

  @override
  String get action_ride_preferences => 'রাইডার পছন্দ';

  @override
  String get navigation_dialog_title_pickup_point => 'পিকআপ পয়েন্টে নেভিগেট করুন';

  @override
  String get navigation_title_destination_point => 'ড্রপ অফ পয়েন্টে নেভিগেট করুন';

  @override
  String get rider_options_dialog_title => 'রাইড অপশন';

  @override
  String get action_cancel_ride => 'রাইড বাতিল করুন';

  @override
  String get invoice_dialog_body => 'আপনি অনলাইন পেমেন্টের পরিবর্তে নগদ পেতে পারেন যদি আপনি এবং লেখক উভয়ই ইচ্ছুক হন।';

  @override
  String get invoice_dialog_heading => 'রাইডার পেমেন্টের জন্য অপেক্ষা করছে';

  @override
  String get invoice_dialog_title => 'পেমেন্ট তথ্য';

  @override
  String get invoice_item_tip => 'টিপ';

  @override
  String get invoice_item_subtotal => 'সাবটোটাল';

  @override
  String get add_credit_dialog_title => 'ক্রেডিট যোগ করুন';

  @override
  String get add_credit_dialog_select_payment_method => 'পেমেন্ট পদ্ধতি নির্বাচন করুন:';

  @override
  String get add_credit_dialog_choose_amount => 'পরিমাণ চয়ন করুন';

  @override
  String get order_details_payment_method_title => 'মূল্যপরিশোধ পদ্ধতি';

  @override
  String get order_payment_method_cash => 'নগদ';

  @override
  String get order_payment_method_online => 'অনলাইন';

  @override
  String get order_details_trip_information_title => 'ট্রিপ তথ্য';

  @override
  String get issue_submit_body => 'আপনি আপনার রাইডের সাথে আপনার যে কোনো সমস্যা রিপোর্ট করতে পারেন। আমরা একটি কলের মধ্যে সমস্যাটি নিয়ে আপনাকে সাহায্য করব৷';

  @override
  String get announcements_empty_state_title => 'এখনো কোনো ঘোষণা নেই!';

  @override
  String get announcements_empty_state_body => 'নতুন ঘোষণা এলে আমরা আপনাকে অবহিত করব।';

  @override
  String get empty_state_title_no_record => 'কোন তথ্য পাওয়া যায়নি!';

  @override
  String get earnings_empty_state_body => 'উপরে সেট করা মানদণ্ডে, আমরা কোনো রেকর্ড খুঁজে পাচ্ছি না।';

  @override
  String get action_continue => 'চালিয়ে যান';

  @override
  String get terms_and_condition_first_part => 'আমি পড়েছি এবং এর সাথে একমত';

  @override
  String get terms_and_conditions_clickable_part => 'শর্তাবলী';

  @override
  String get onboarding_welcome => 'স্বাগত !';

  @override
  String get action_login_signup => 'প্রবেশ করুন - নিবন্ধন করুন';

  @override
  String get action_complete_registration => 'সম্পূর্ণ নিবন্ধন';

  @override
  String get action_edit_submission => 'জমা সম্পাদনা করুন';

  @override
  String get incomplete_registration_description => 'আপনার সম্পূর্ণ করুন\n নিবন্ধন জমা';

  @override
  String get pending_review_registration_description => 'আপনার জমা পর্যালোচনা করা হচ্ছে,\n ধৈর্যের জন্য ধন্যবাদ.';

  @override
  String get hard_reject_registration => 'আপনার জমা সম্পূর্ণ প্রত্যাখ্যান করা হয়!';

  @override
  String get soft_rejection_description => 'জমা দিতে সমস্যা আছে';

  @override
  String get action_confirm_and_continue => 'নিশ্চিত করুন এবং চালিয়ে যান';

  @override
  String get ride_preferences_title => 'রাইড পছন্দ';

  @override
  String get action_back => 'পেছনে';

  @override
  String get title_logout => 'প্রস্থান';

  @override
  String get logout_dialog_body => 'আপনি কি নিশ্চিত যে আপনি অ্যাপ্লিকেশন থেকে লগ আউট করতে চান?';

  @override
  String get action_delete_account => 'হিসাব মুছে ফেলা';

  @override
  String get dialog_account_deletion_title => 'অ্যাকাউন্ট মুছে ফেলা';

  @override
  String get dialog_account_deletion_body => 'আপনি আপনার অ্যাকাউন্ট মুছে ফেলতে চান আপনি কি নিশ্চিত? অ্যাকাউন্ট পুনরুদ্ধার করতে আপনি 30 দিনের মধ্যে আবার লগ ইন করতে পারেন। এই সময়ের পরে, আপনার সমস্ত অবশিষ্ট ক্রেডিট সহ আপনার ডেটা সম্পূর্ণরূপে মুছে ফেলা হবে।';

  @override
  String wallet_card_title(Object appName) {
    return '$appName ওয়ালেট';
  }

  @override
  String get order_status_canceled => 'বাতিল';

  @override
  String get driver_register_title => 'ড্রাইভার নিবন্ধন';

  @override
  String get menu_profile => 'আমার প্রোফাইল';

  @override
  String get profile_services_title => 'সেবা:';

  @override
  String get profile_bank_information_title => 'ব্যাংক তথ্য';

  @override
  String get profile_vehicle_information_title => 'যানবাহন তথ্য';

  @override
  String get profile_distance_traveled => 'দূরত্ব ভ্রমণ';

  @override
  String get profile_total_trips => 'মোট ভ্রমণ';

  @override
  String get profile_rating => 'রেটিং';

  @override
  String get register_number_title => 'আপনার ফোন নম্বর লিখুন';

  @override
  String get register_number_subtitle => 'রেজিস্ট্রেশন চালিয়ে যেতে আমরা আপনার নম্বরে একটি কোড পাঠাব';

  @override
  String get register_verify_code_title => 'কোড লিখুন';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'আমরা $number এ একটি কোড পাঠিয়েছি';
  }

  @override
  String get register_contact_details_title => 'আপনার যোগাযোগের বিবরণ লিখুন';

  @override
  String get register_payout_details_title => 'আপনার পেআউট বিবরণ লিখুন';

  @override
  String get register_ride_details_title => 'আপনার রাইড বিবরণ লিখুন';

  @override
  String get register_profile_photo_title => 'প্রোফাইল ফটো আপলোড করুন';

  @override
  String get register_profile_photo_subtitle => 'আপলোড করা ছবিতে আপনার মুখ চেনা যাবে';

  @override
  String get action_add_photo => 'ছবি যোগ করুন';

  @override
  String get register_upload_documents_title => 'প্রয়োজনীয় নথি আপলোড করুন';

  @override
  String get register_upload_documents_subtitle => 'আপনার পরিচয় যাচাই করতে এবং প্রবিধানগুলি মেনে চলতে আমাদের আপনাকে নীচের নথিগুলি আপলোড করতে হবে: \\n1-ফটো আইডি\\n2-ড্রাইভার লাইসেন্স\\n3-রাইড মালিকানার নথি';

  @override
  String get register_step_phone_number => 'সেল নম্বর';

  @override
  String get register_step_verify_number => 'নম্বর যাচাই করুন';

  @override
  String get register_step_contact_details => 'যোগাযোগের ঠিকানা';

  @override
  String get register_step_ride_details => 'রাইডের বিবরণ';

  @override
  String get register_step_payout_details => 'পেআউট বিবরণ';

  @override
  String get register_step_upload_documents => 'নথি আপলোড করুন';

  @override
  String get profile_uploaded_documents_title => 'আপলোড করা নথি';

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
