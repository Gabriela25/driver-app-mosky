import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get statusOffline => 'بحث عن رحلات';

  @override
  String get statusOnline => 'إيقاف البحث';

  @override
  String get message_notification_permission_title => 'السماح للتنبيهات';

  @override
  String get message_notification_permission_denined_message => 'تم رفض إذن الإعلام سابقا. من أجل الحصول على إشعارات الطلبات الجديدة ، يمكنك تمكين الإذن من إعدادات التطبيق.';

  @override
  String get action_ok => 'موافق';

  @override
  String get menu_logout => 'تسجيل الخروج';

  @override
  String get menu_about => 'حول';

  @override
  String get menu_wallet => 'المحفظة';

  @override
  String get menu_trip_history => 'تاريخ الرحلات';

  @override
  String get menu_announcements => 'الإشعارات';

  @override
  String get message_unknown_error => 'خطأ غير معروف';

  @override
  String get title_success => 'تمت العملية';

  @override
  String get driver_register_profile_submitted_message => 'تم ارسال الطلب للمراجعةوالتدقيق. سوف يتم تحديث حالة الطلب قريباً';

  @override
  String get driver_registration_approved_demo_mode => 'للتجربة فقط';

  @override
  String get title_important => '!مهم';

  @override
  String get cell_number => 'رقم الجوال';

  @override
  String get phone_number_empty => 'ادخل رقم الجوال';

  @override
  String get driver_registration_step_verify_number_title => 'رمز التأكيد';

  @override
  String get driver_register_verification_code_textfield_hint => 'رمز التأكيد';

  @override
  String get driver_register_contact_details_title => 'معلومات التواصل';

  @override
  String get firstname => 'الاسم الأول';

  @override
  String get lastname => 'الاسم الأخير';

  @override
  String get email => 'الايميل';

  @override
  String get certificate_number => 'رقم الوثيقة';

  @override
  String get gender => 'الجنس';

  @override
  String get gender_male => 'ذكر';

  @override
  String get gender_female => 'انثى';

  @override
  String get address => 'العنوان';

  @override
  String get driver_register_ride_details_step_title => 'معلومات المركبة';

  @override
  String get plate_number => 'رقم اللوحة';

  @override
  String get car_production_year => 'سنة الصنع';

  @override
  String get car_model => 'نوع السيارة';

  @override
  String get car_color => 'لون السيارة';

  @override
  String get driver_register_step_payout_details_title => 'معلومات الدفع';

  @override
  String get bank_name => 'اسم البنك';

  @override
  String get account_number => 'رقم الحساب';

  @override
  String get bank_swift => '(Swift) رمز البنك';

  @override
  String get bankRoutingNumber => 'رقم تحويل البنك';

  @override
  String get driver_register_step_documents_title => 'المرفقات';

  @override
  String get driver_register_step_documents_heading => 'للتأكد من صحة البيانات اعلاه نرجو رفع الملفات التالية';

  @override
  String get driver_register_document_first => ' بطاقة الهوية/الإقامة';

  @override
  String get driver_register_document_second => 'رخصة القيادة';

  @override
  String get driver_register_document_third => 'استمارة المركبة';

  @override
  String get action_upload_document => 'رفع الملفات';

  @override
  String get trip_history_empty_state => 'لا يوجد رحلات سابقة';

  @override
  String get wallet_empty_state_message => 'لا دفعات سابقة';

  @override
  String get enum_unknown => 'غير معروف';

  @override
  String get top_up_sheet_pay_button => 'ادفع';

  @override
  String get loading => 'جار التحميل';

  @override
  String get available_order_action_accept => 'قبول الطلب';

  @override
  String get order_status_action_received_cash => 'تم استلام المبلغ نقدياً';

  @override
  String get action_cancel => 'إلغاء';

  @override
  String get order_status_action_navigate => 'تتبع';

  @override
  String get order_status_action_arrived => 'تم الوصول';

  @override
  String get order_status_action_start => 'بدأ الرحلة';

  @override
  String get order_status_action_finished => 'تم اكمال الرحلة';

  @override
  String get message_cant_open_url => 'لا يمكن فتح الروابط';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'تحويل بنكي';

  @override
  String get enum_driver_recharge_type_gift => 'هدية';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'دفع من خلال التطبيق';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'رسوم القيمة المضافة';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'سحب';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'تصحيح';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'العمولة';

  @override
  String copyright_notice(Object company) {
    return '$company © كل الحقوق محفوظة لشركة ';
  }

  @override
  String get wallet_activities_heading => 'أنشطة';

  @override
  String get form_required_field_error => 'حقل مطلوب';

  @override
  String get button_report_issue => 'ابلاغ عن مشكلة';

  @override
  String get issue_submit_title => 'ابلاغ عن مشكلة';

  @override
  String get issue_subject_placeholder => 'الموضوع';

  @override
  String get error_field_cant_be_empty => 'لا يمكن أن يكون فارغ';

  @override
  String get issue_description_placeholder => 'وصف';

  @override
  String get complaint_submit_success_message => 'تم رفع الشكوى. سوف يتم التواصل معك عن طريق الدعم الفني قريباً';

  @override
  String get menu_earnings => 'المكاسب';

  @override
  String get status_offline_description => 'ابحث عن رحلات';

  @override
  String get status_online_description => 'بحث عن طلب';

  @override
  String get order_status_card_title_driver_accepted => 'سوف يتم اشعار صاحب الطب عند الضغط على تم الوصول';

  @override
  String get order_status_card_title_arrived => 'تم اشعار صاحب/ة الطلب';

  @override
  String get order_status_card_title_started => 'الذهاب للوجهة';

  @override
  String get navigation_dialog_title => 'اختيار التتبع عن طريق:';

  @override
  String get action_ride_options => 'خيارات الرحلة';

  @override
  String rider_expected_time_past(Object minutes) {
    return '$minutes مدة التأخير';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return '$minutes الوقت للوصول';
  }

  @override
  String get order_payment_status_unpaid => 'لم يتم دفع المبلغ';

  @override
  String get order_payment_status_paid => 'تم دفع المبلغ';

  @override
  String get action_ride_preferences => 'تفضيلات الراكب';

  @override
  String get navigation_dialog_title_pickup_point => 'الذهاب لموقع الطلب';

  @override
  String get navigation_title_destination_point => 'الذهاب لموقع الوصول';

  @override
  String get rider_options_dialog_title => 'خيارات الرحلة';

  @override
  String get action_cancel_ride => 'إلغاء الرحلة';

  @override
  String get invoice_dialog_body => ' تستطيع استلام المبلغ نقدياً في حال تم الاتقاق';

  @override
  String get invoice_dialog_heading => 'انتظار الدفع';

  @override
  String get invoice_dialog_title => 'معلومات الدفع';

  @override
  String get invoice_item_tip => 'عمولة اضافية';

  @override
  String get invoice_item_subtotal => 'المجموع';

  @override
  String get add_credit_dialog_title => 'اضافة بطاقة';

  @override
  String get add_credit_dialog_select_payment_method => 'تحديد طريقة الدفع';

  @override
  String get add_credit_dialog_choose_amount => 'اختيار القيمة';

  @override
  String get order_details_payment_method_title => 'وسيلة الدفع';

  @override
  String get order_payment_method_cash => 'نقدي';

  @override
  String get order_payment_method_online => 'عبر التطبيق';

  @override
  String get order_details_trip_information_title => 'معلومات الرحلة';

  @override
  String get issue_submit_body => 'تستطيع الابلاغ عن أي اشكالية وسوف نتواصل معك في اقرب فرصة';

  @override
  String get announcements_empty_state_title => 'لا يوجد اشعاارات';

  @override
  String get announcements_empty_state_body => 'سوف يتم اشعارك عند وصول أي اشعار';

  @override
  String get empty_state_title_no_record => 'لا يوجد بيانات';

  @override
  String get earnings_empty_state_body => 'لا يمكن ايجاد أي معلومات بالخيارات اعلاه';

  @override
  String get action_continue => 'المتابعة';

  @override
  String get terms_and_condition_first_part => 'قرأت ومواقق';

  @override
  String get terms_and_conditions_clickable_part => 'الشروط والاحكام';

  @override
  String get onboarding_welcome => 'هلا';

  @override
  String get action_login_signup => 'تسجيل الدخول/ تسجيل جديد';

  @override
  String get action_complete_registration => 'اكمال التسجيل';

  @override
  String get action_edit_submission => 'تعديل الطلب';

  @override
  String get incomplete_registration_description => 'نرجو اكمال معلومات الطلب';

  @override
  String get pending_review_registration_description => 'طلبك تحت المراجعة. شكراً للانتظار';

  @override
  String get hard_reject_registration => 'تم رفض طلبك';

  @override
  String get soft_rejection_description => 'هنالك اشكالية مع الطلب';

  @override
  String get action_confirm_and_continue => 'تأكيد ومتابعة';

  @override
  String get ride_preferences_title => 'خيارات الرحلة';

  @override
  String get action_back => 'الخلف';

  @override
  String get title_logout => 'تسجيل الخروج';

  @override
  String get logout_dialog_body => 'هل أنت متأكد من تسجيل الخروج؟';

  @override
  String get action_delete_account => 'حذف الحساب';

  @override
  String get dialog_account_deletion_title => 'حذف الحساب';

  @override
  String get dialog_account_deletion_body => 'هل أنت متأكد من حذف الحساب؟ تستطيع الدخول خلال 30 يوم لتنشيط الحساب. بعد هذه المدة سيتم حذف الحساب مع كافة بياناته شاملاً ذلك المبالغ المتبقية';

  @override
  String wallet_card_title(Object appName) {
    return '$appName المحفظة';
  }

  @override
  String get order_status_canceled => 'إلغاء';

  @override
  String get driver_register_title => 'تسجيل السائق';

  @override
  String get menu_profile => 'ملفي';

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
  String get action_add_photo => 'إضافة صورة';

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
