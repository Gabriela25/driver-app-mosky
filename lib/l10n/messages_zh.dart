import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class SZh extends S {
  SZh([String locale = 'zh']) : super(locale);

  @override
  String get statusOffline => '上网';

  @override
  String get statusOnline => '下线';

  @override
  String get message_notification_permission_title => '通知权限';

  @override
  String get message_notification_permission_denined_message => '通知权限之前被拒绝。为了获得新的订单通知，您可以从应用设置中启用权限。';

  @override
  String get action_ok => '好的';

  @override
  String get menu_logout => '登出';

  @override
  String get menu_about => '关于';

  @override
  String get menu_wallet => '钱包';

  @override
  String get menu_trip_history => '旅行历史';

  @override
  String get menu_announcements => '公告';

  @override
  String get message_unknown_error => '未知错误';

  @override
  String get title_success => '成功';

  @override
  String get driver_register_profile_submitted_message => '您的个人资料已提交以供管理员批准。您可以稍后再回来查看您提交的状态。';

  @override
  String get driver_registration_approved_demo_mode => '通常，在这个阶段管理员需要从管理面板批准驱动程序的提交。但是，为了演示，您的个人资料现在已自动获得批准并可以使用。';

  @override
  String get title_important => '重要的！';

  @override
  String get cell_number => '细胞数量';

  @override
  String get phone_number_empty => '请输入电话号码';

  @override
  String get driver_registration_step_verify_number_title => '验证号码';

  @override
  String get driver_register_verification_code_textfield_hint => '验证码';

  @override
  String get driver_register_contact_details_title => '联系方式';

  @override
  String get firstname => '名';

  @override
  String get lastname => '姓';

  @override
  String get email => '电子邮件';

  @override
  String get certificate_number => '证书编号';

  @override
  String get gender => '性别';

  @override
  String get gender_male => '男性';

  @override
  String get gender_female => '女性';

  @override
  String get address => '地址';

  @override
  String get driver_register_ride_details_step_title => '乘车详情';

  @override
  String get plate_number => '车牌号码';

  @override
  String get car_production_year => '生产年份';

  @override
  String get car_model => '汽车模型';

  @override
  String get car_color => '汽车颜色';

  @override
  String get driver_register_step_payout_details_title => '付款详情';

  @override
  String get bank_name => '银行名称';

  @override
  String get account_number => '帐号';

  @override
  String get bank_swift => '银行斯威夫特';

  @override
  String get bankRoutingNumber => '银行路由号码';

  @override
  String get driver_register_step_documents_title => '文件';

  @override
  String get driver_register_step_documents_heading => '为了验证上述文件，我们需要上传以下文件';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-驾驶执照';

  @override
  String get driver_register_document_third => '3-Ride 的所有权文件';

  @override
  String get action_upload_document => '上传文件';

  @override
  String get trip_history_empty_state => '没有记录过去的订单。';

  @override
  String get wallet_empty_state_message => '没有记录历史。';

  @override
  String get enum_unknown => '未知';

  @override
  String get top_up_sheet_pay_button => '支付';

  @override
  String get loading => '正在加载';

  @override
  String get available_order_action_accept => '接受订单';

  @override
  String get order_status_action_received_cash => '收到现金付款';

  @override
  String get action_cancel => '取消';

  @override
  String get order_status_action_navigate => '导航';

  @override
  String get order_status_action_arrived => '到达的';

  @override
  String get order_status_action_start => '开始旅行';

  @override
  String get order_status_action_finished => '结束';

  @override
  String get message_cant_open_url => '不支持命令';

  @override
  String get enum_driver_recharge_type_bank_transfer => '银行转帐';

  @override
  String get enum_driver_recharge_type_gift => '礼物';

  @override
  String get enum_driver_recharge_type_in_app_payment => '应用内支付';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => '订购费';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => '提取';

  @override
  String get enum_driver_deduct_transaction_type_correction => '更正';

  @override
  String get enum_driver_deduct_transaction_type_commission => '委员会';

  @override
  String copyright_notice(Object company) {
    return '版权所有 © $company，保留所有权利。';
  }

  @override
  String get wallet_activities_heading => '活动';

  @override
  String get form_required_field_error => '必填项目';

  @override
  String get button_report_issue => '报告问题';

  @override
  String get issue_submit_title => '报告问题';

  @override
  String get issue_subject_placeholder => '主题';

  @override
  String get error_field_cant_be_empty => '不能为空';

  @override
  String get issue_description_placeholder => '描述';

  @override
  String get complaint_submit_success_message => '投诉已提交。请等待我们的支持代表就您的询问与您联系。';

  @override
  String get menu_earnings => '收益';

  @override
  String get status_offline_description => '上网查看请求';

  @override
  String get status_online_description => '寻找搭车';

  @override
  String get order_status_card_title_driver_accepted => '一旦您点击到达，骑手将收到通知';

  @override
  String get order_status_card_title_arrived => '已通知骑手';

  @override
  String get order_status_card_title_started => '前往目的地';

  @override
  String get navigation_dialog_title => '选择一个应用程序进行导航';

  @override
  String get action_ride_options => '骑行选项';

  @override
  String rider_expected_time_past(Object minutes) {
    return '骑士 $minutes 前期待您';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return '骑士在 $minutes 等你';
  }

  @override
  String get order_payment_status_unpaid => '行程尚未付款';

  @override
  String get order_payment_status_paid => '骑手已付款';

  @override
  String get action_ride_preferences => '骑手偏好';

  @override
  String get navigation_dialog_title_pickup_point => '导航到上车点';

  @override
  String get navigation_title_destination_point => '导航到下车点';

  @override
  String get rider_options_dialog_title => '骑行选项';

  @override
  String get action_cancel_ride => '取消行程';

  @override
  String get invoice_dialog_body => '如果您和作者都愿意，您也可以收到现金而不是在线付款。';

  @override
  String get invoice_dialog_heading => '等待骑手付款';

  @override
  String get invoice_dialog_title => '付款信息';

  @override
  String get invoice_item_tip => '小费';

  @override
  String get invoice_item_subtotal => '小计';

  @override
  String get add_credit_dialog_title => '添加信用';

  @override
  String get add_credit_dialog_select_payment_method => '选择付款方式：';

  @override
  String get add_credit_dialog_choose_amount => '选择金额';

  @override
  String get order_details_payment_method_title => '付款方式';

  @override
  String get order_payment_method_cash => '现金';

  @override
  String get order_payment_method_online => '在线的';

  @override
  String get order_details_trip_information_title => '行程信息';

  @override
  String get issue_submit_body => '您可以报告您在骑行过程中遇到的任何问题。我们将在电话中帮助您解决问题。';

  @override
  String get announcements_empty_state_title => '暂无公告！';

  @override
  String get announcements_empty_state_body => '当有新的公告时，我们会通知您。';

  @override
  String get empty_state_title_no_record => '没有找到数据！';

  @override
  String get earnings_empty_state_body => '在上面设置的条件下，我们找不到任何记录。';

  @override
  String get action_continue => '继续';

  @override
  String get terms_and_condition_first_part => '我已阅读并同意';

  @override
  String get terms_and_conditions_clickable_part => '条款和条件';

  @override
  String get onboarding_welcome => '欢迎 ！';

  @override
  String get action_login_signup => '登陆注册';

  @override
  String get action_complete_registration => '完成注册';

  @override
  String get action_edit_submission => '编辑提交';

  @override
  String get incomplete_registration_description => '请填写您的\n 注册提交';

  @override
  String get pending_review_registration_description => '您提交的内容正在审核中，\n 谢谢你的耐心。';

  @override
  String get hard_reject_registration => '您的提交被完全拒绝！';

  @override
  String get soft_rejection_description => '提交有问题';

  @override
  String get action_confirm_and_continue => '确认并继续';

  @override
  String get ride_preferences_title => '乘坐偏好';

  @override
  String get action_back => '后退';

  @override
  String get title_logout => '登出';

  @override
  String get logout_dialog_body => '您确定要退出应用程序吗？';

  @override
  String get action_delete_account => '删除帐户';

  @override
  String get dialog_account_deletion_title => '帐户删除';

  @override
  String get dialog_account_deletion_body => '您确定要删除您的帐户吗？您可以在 30 天内再次登录以恢复帐户。在此期间之后，您的数据将被完全删除，包括您所有剩余的信用。';

  @override
  String wallet_card_title(Object appName) {
    return '$appName 钱包';
  }

  @override
  String get order_status_canceled => '取消';

  @override
  String get driver_register_title => '司机登记';

  @override
  String get menu_profile => '我的简历';

  @override
  String get profile_services_title => '服务：';

  @override
  String get profile_bank_information_title => '银行信息';

  @override
  String get profile_vehicle_information_title => '车辆信息';

  @override
  String get profile_distance_traveled => '行驶距离';

  @override
  String get profile_total_trips => '总行程';

  @override
  String get profile_rating => '评分';

  @override
  String get register_number_title => '输入你的电话号码';

  @override
  String get register_number_subtitle => '我们将向您的号码发送代码以继续注册';

  @override
  String get register_verify_code_title => '输入代码';

  @override
  String register_verify_code_subtitle(Object number) {
    return '我们已向 $number 发送了一个代码';
  }

  @override
  String get register_contact_details_title => '输入您的联系方式';

  @override
  String get register_payout_details_title => '输入您的付款详情';

  @override
  String get register_ride_details_title => '输入您的行程详情';

  @override
  String get register_profile_photo_title => '上传个人资料照片';

  @override
  String get register_profile_photo_subtitle => '您的脸应该在上传的图像中可以识别';

  @override
  String get action_add_photo => '添加照片';

  @override
  String get register_upload_documents_title => '上传所需文件';

  @override
  String get register_upload_documents_subtitle => '为了验证您的身份并遵守规定，我们需要您上传以下文件：\\n1-带照片的身份证件\\n2-驾驶执照\\n3-乘车所有权文件';

  @override
  String get register_step_phone_number => '细胞数量';

  @override
  String get register_step_verify_number => '验证号码';

  @override
  String get register_step_contact_details => '联系方式';

  @override
  String get register_step_ride_details => '骑行详情';

  @override
  String get register_step_payout_details => '付款详情';

  @override
  String get register_step_upload_documents => '上传文件';

  @override
  String get profile_uploaded_documents_title => '上传文件';

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
