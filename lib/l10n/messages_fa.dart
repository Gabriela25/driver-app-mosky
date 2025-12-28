import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class SFa extends S {
  SFa([String locale = 'fa']) : super(locale);

  @override
  String get statusOffline => 'آفلاین';

  @override
  String get statusOnline => 'برخط';

  @override
  String get message_notification_permission_title => 'مجوز اطلاع رسانی';

  @override
  String get message_notification_permission_denined_message => 'مجوز اعلان قبلاً رد شده بود. برای دریافت اعلان‌های سفارش جدید، می‌توانید مجوز را از تنظیمات برنامه فعال کنید.';

  @override
  String get action_ok => 'خوب';

  @override
  String get menu_logout => 'خروج';

  @override
  String get menu_about => 'درباره';

  @override
  String get menu_wallet => 'کیف پول';

  @override
  String get menu_trip_history => 'تاریخچه سفر';

  @override
  String get menu_announcements => 'اطلاعیه ها';

  @override
  String get message_unknown_error => 'خطای ناشناخته';

  @override
  String get title_success => 'موفقیت';

  @override
  String get driver_register_profile_submitted_message => 'نمایه شما برای تایید سرپرست ارسال شده است. می‌توانید بعداً دوباره بررسی کنید تا وضعیت ارسالی خود را ببینید.';

  @override
  String get driver_registration_approved_demo_mode => 'معمولاً در این مرحله ادمین باید ارسال راننده را از پنل مدیریت تأیید کند. با این حال، به خاطر نسخه ی نمایشی، نمایه شما به طور خودکار تأیید شده و آماده استفاده است.';

  @override
  String get title_important => 'مهم!';

  @override
  String get cell_number => 'شماره همراه';

  @override
  String get phone_number_empty => 'لطفا شماره تلفن را وارد کنید';

  @override
  String get driver_registration_step_verify_number_title => 'تأیید شماره';

  @override
  String get driver_register_verification_code_textfield_hint => 'کد تایید';

  @override
  String get driver_register_contact_details_title => 'اطلاعات تماس';

  @override
  String get firstname => 'نام کوچک';

  @override
  String get lastname => 'نام خانوادگی';

  @override
  String get email => 'پست الکترونیک';

  @override
  String get certificate_number => 'شماره گواهی';

  @override
  String get gender => 'جنسیت';

  @override
  String get gender_male => 'نر';

  @override
  String get gender_female => 'مونث';

  @override
  String get address => 'نشانی';

  @override
  String get driver_register_ride_details_step_title => 'جزئیات سواری';

  @override
  String get plate_number => 'شماره پلاک';

  @override
  String get car_production_year => 'سال تولید';

  @override
  String get car_model => 'مدل ماشین';

  @override
  String get car_color => 'رنگ ماشین';

  @override
  String get driver_register_step_payout_details_title => 'جزئیات پرداخت';

  @override
  String get bank_name => 'نام بانک';

  @override
  String get account_number => 'شماره حساب';

  @override
  String get bank_swift => 'بانک سوئیفت';

  @override
  String get bankRoutingNumber => 'شماره مسیریابی بانک';

  @override
  String get driver_register_step_documents_title => 'اسناد';

  @override
  String get driver_register_step_documents_heading => 'برای تأیید اسناد بالا، ما به اسناد زیر نیاز داریم که بارگذاری شوند';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2- گواهینامه رانندگی';

  @override
  String get driver_register_document_third => '3-سند مالکیت راید';

  @override
  String get action_upload_document => 'بارگذاری سند';

  @override
  String get trip_history_empty_state => 'هیچ سفارش قبلی ثبت نشده است.';

  @override
  String get wallet_empty_state_message => 'هیچ سابقه ای ثبت نشده است.';

  @override
  String get enum_unknown => 'ناشناس';

  @override
  String get top_up_sheet_pay_button => 'پرداخت';

  @override
  String get loading => 'بارگذاری';

  @override
  String get available_order_action_accept => 'قبول سفارش';

  @override
  String get order_status_action_received_cash => 'پرداخت نقدی دریافت شد';

  @override
  String get action_cancel => 'لغو کنید';

  @override
  String get order_status_action_navigate => 'پیمایش کنید';

  @override
  String get order_status_action_arrived => 'رسید';

  @override
  String get order_status_action_start => 'شروع سفر';

  @override
  String get order_status_action_finished => 'پایان';

  @override
  String get message_cant_open_url => 'فرمان پشتیبانی نمی شود';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'حواله بانکی';

  @override
  String get enum_driver_recharge_type_gift => 'هدیه';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'پرداخت درون برنامه ای';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'هزینه سفارش';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'کنار کشیدن';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'تصحیح';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'کمیسیون';

  @override
  String copyright_notice(Object company) {
    return 'حق نشر © $company، بسیار خوب محفوظ است.';
  }

  @override
  String get wallet_activities_heading => 'فعالیت ها';

  @override
  String get form_required_field_error => 'فیلد الزامی';

  @override
  String get button_report_issue => 'گزارش مشکل';

  @override
  String get issue_submit_title => 'ثبت گزارش مشکل';

  @override
  String get issue_subject_placeholder => 'عنوان';

  @override
  String get error_field_cant_be_empty => 'نمی تواند خالی باشد';

  @override
  String get issue_description_placeholder => 'شرح';

  @override
  String get complaint_submit_success_message => 'درخواست ثبت شد. لطفا منتظر تماس از تیم پشتیبانی باشید.';

  @override
  String get menu_earnings => 'درآمدها';

  @override
  String get status_offline_description => 'برای مشاهده درخواست ها آنلاین شوید';

  @override
  String get status_online_description => 'در جستجوی سفر';

  @override
  String get order_status_card_title_driver_accepted => 'با انتخاب رسیدن مسافر مطلع خواهد شد';

  @override
  String get order_status_card_title_arrived => 'مسافر از رسیدن شما مطلع شد';

  @override
  String get order_status_card_title_started => 'در مسیر به مقصد';

  @override
  String get navigation_dialog_title => 'یک اپ برای مسیریابی انتخاب کنید';

  @override
  String get action_ride_options => 'گزینه های سفر';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'مسافر $minutes قبل منتظر شما بود';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'مسافر انتظار رسیدن شمارا در $minutes دقیقه دارد';
  }

  @override
  String get order_payment_status_unpaid => 'سفر پرداخت نشده است';

  @override
  String get order_payment_status_paid => 'سفر پرداخت شده است';

  @override
  String get action_ride_preferences => 'ترجیحات سوار';

  @override
  String get navigation_dialog_title_pickup_point => 'مسیریابی به مبدا';

  @override
  String get navigation_title_destination_point => 'مسیر یابی به مقصد';

  @override
  String get rider_options_dialog_title => 'گزینه های سفر';

  @override
  String get action_cancel_ride => 'لغو سفر';

  @override
  String get invoice_dialog_body => 'درصورت رضایت مسافر میتوانید بصورت نقدی اقدام به پرداخت نمایید.';

  @override
  String get invoice_dialog_heading => 'در انتظار پرداخت';

  @override
  String get invoice_dialog_title => 'اطلاعات پرداخت';

  @override
  String get invoice_item_tip => 'انعام';

  @override
  String get invoice_item_subtotal => 'جمع کل';

  @override
  String get add_credit_dialog_title => 'اضافه کردن اعتبار';

  @override
  String get add_credit_dialog_select_payment_method => 'درگاه پرداخت را انتخاب کنید:';

  @override
  String get add_credit_dialog_choose_amount => 'مقدار را وارد کنید';

  @override
  String get order_details_payment_method_title => 'شیوه پرداخت';

  @override
  String get order_payment_method_cash => 'نقدی';

  @override
  String get order_payment_method_online => 'آنلاین';

  @override
  String get order_details_trip_information_title => 'اطلاعات سفر';

  @override
  String get issue_submit_body => 'شما میتوانید در این بخش مشکل پیش آمده در سفر را گزارش دهید تا توسط تیم پشتیبانی پیگیری شود.';

  @override
  String get announcements_empty_state_title => 'اطلاعیه ای موجود نیست!';

  @override
  String get announcements_empty_state_body => 'اطلاعیه های جدید به شما یادآوری خواهند شد.';

  @override
  String get empty_state_title_no_record => 'یافت نشد!';

  @override
  String get earnings_empty_state_body => 'با شروط مذکور هیچ اطلاعاتی یافت نشد.';

  @override
  String get action_continue => 'ادامه';

  @override
  String get terms_and_condition_first_part => 'من مطالعه کردم و موافقم با ';

  @override
  String get terms_and_conditions_clickable_part => 'شروط استفاده';

  @override
  String get onboarding_welcome => 'خوش آمدید !';

  @override
  String get action_login_signup => 'ورود / ثبت نام';

  @override
  String get action_complete_registration => 'اتمام ثبت نام';

  @override
  String get action_edit_submission => 'ویرایش اطلاعات';

  @override
  String get incomplete_registration_description => 'لطفا ثبت نام خود را \\nکامل کنید';

  @override
  String get pending_review_registration_description => 'درخواست شما در حال بررسی است.\\nاز صبوری شما متشکریم.';

  @override
  String get hard_reject_registration => 'درخواست شما رد شده است!';

  @override
  String get soft_rejection_description => 'مشکلی در درخواست شما وجود دارد';

  @override
  String get action_confirm_and_continue => 'تائید و ادامه';

  @override
  String get ride_preferences_title => 'گزینه های سفر';

  @override
  String get action_back => 'برگشت';

  @override
  String get title_logout => 'خروج';

  @override
  String get logout_dialog_body => 'آیا مطمئنید میخواهید از حساب خود خارج شوید؟';

  @override
  String get action_delete_account => 'حذف حساب';

  @override
  String get dialog_account_deletion_title => 'حذف حساب';

  @override
  String get dialog_account_deletion_body => 'آیا از حذف حساب خود مطمئنید؟‌تا ۳۰ روز پس از این درخواست با ورود مجدد می توانید حساب خود را بازیابی کنید. پس از این مدت حساب شما بهمراه تمام موجودی فعلی آن حذف خواهد شد';

  @override
  String wallet_card_title(Object appName) {
    return 'کیف پول $appName';
  }

  @override
  String get order_status_canceled => 'کنسل شده';

  @override
  String get driver_register_title => 'ثبت نام راننده';

  @override
  String get menu_profile => 'پروفایل من';

  @override
  String get profile_services_title => 'Services:';

  @override
  String get profile_bank_information_title => 'Bank Information';

  @override
  String get profile_vehicle_information_title => 'Vehicle Information';

  @override
  String get profile_distance_traveled => 'Distance traveled';

  @override
  String get profile_total_trips => 'Total trips';

  @override
  String get profile_rating => 'Rating';

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
  String get action_add_photo => 'عکس اضافه کنید';

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
