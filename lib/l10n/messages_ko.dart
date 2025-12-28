import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class SKo extends S {
  SKo([String locale = 'ko']) : super(locale);

  @override
  String get statusOffline => '온라인으로';

  @override
  String get statusOnline => '접속을 끊다';

  @override
  String get message_notification_permission_title => '알림 권한';

  @override
  String get message_notification_permission_denined_message => '이전에 알림 권한이 거부되었습니다. 새로운 주문 알림을 받기 위해 앱 설정에서 권한을 활성화할 수 있습니다.';

  @override
  String get action_ok => '확인';

  @override
  String get menu_logout => '로그 아웃';

  @override
  String get menu_about => '에 대한';

  @override
  String get menu_wallet => '지갑';

  @override
  String get menu_trip_history => '여행 이력';

  @override
  String get menu_announcements => '공지사항';

  @override
  String get message_unknown_error => '알수없는 오류';

  @override
  String get title_success => '성공';

  @override
  String get driver_register_profile_submitted_message => '관리자 승인을 위해 프로필이 제출되었습니다. 나중에 다시 확인하여 제출 상태를 확인할 수 있습니다.';

  @override
  String get driver_registration_approved_demo_mode => '일반적으로 이 단계에서 관리자는 관리자 패널에서 드라이버 제출을 승인해야 합니다. 그러나 데모를 위해 프로필이 자동으로 승인되어 사용할 준비가 되었습니다.';

  @override
  String get title_important => '중요한!';

  @override
  String get cell_number => '셀 번호';

  @override
  String get phone_number_empty => '전화번호를 입력해주세요';

  @override
  String get driver_registration_step_verify_number_title => '번호 확인';

  @override
  String get driver_register_verification_code_textfield_hint => '확인 코드';

  @override
  String get driver_register_contact_details_title => '연락처 세부 정보';

  @override
  String get firstname => '이름';

  @override
  String get lastname => '성';

  @override
  String get email => '이메일';

  @override
  String get certificate_number => '인증서 번호';

  @override
  String get gender => '성별';

  @override
  String get gender_male => '남성';

  @override
  String get gender_female => '여성';

  @override
  String get address => '주소';

  @override
  String get driver_register_ride_details_step_title => '라이드 세부 정보';

  @override
  String get plate_number => '플레이트 번호';

  @override
  String get car_production_year => '생산 연도';

  @override
  String get car_model => '자동차 모델';

  @override
  String get car_color => '자동차 색상';

  @override
  String get driver_register_step_payout_details_title => '지불 세부 정보';

  @override
  String get bank_name => '은행 이름';

  @override
  String get account_number => '계좌 번호';

  @override
  String get bank_swift => '은행 신속';

  @override
  String get bankRoutingNumber => '은행 라우팅 번호';

  @override
  String get driver_register_step_documents_title => '서류';

  @override
  String get driver_register_step_documents_heading => '위 서류 확인을 위해 아래 서류 업로드가 필요합니다.';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-운전 면허증';

  @override
  String get driver_register_document_third => '3-Ride의 소유권 문서';

  @override
  String get action_upload_document => '문서 업로드';

  @override
  String get trip_history_empty_state => '기록된 과거 주문이 없습니다.';

  @override
  String get wallet_empty_state_message => '기록된 기록이 없습니다.';

  @override
  String get enum_unknown => '불명';

  @override
  String get top_up_sheet_pay_button => '지불';

  @override
  String get loading => '로딩 중';

  @override
  String get available_order_action_accept => '주문 수락';

  @override
  String get order_status_action_received_cash => '현금 지불 받았습니다';

  @override
  String get action_cancel => '취소';

  @override
  String get order_status_action_navigate => '탐색';

  @override
  String get order_status_action_arrived => '도착했다';

  @override
  String get order_status_action_start => '여행 시작';

  @override
  String get order_status_action_finished => '마치다';

  @override
  String get message_cant_open_url => '명령이 지원되지 않습니다.';

  @override
  String get enum_driver_recharge_type_bank_transfer => '은행 송금';

  @override
  String get enum_driver_recharge_type_gift => '선물';

  @override
  String get enum_driver_recharge_type_in_app_payment => '인앱 결제';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => '주문 수수료';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => '철회하다';

  @override
  String get enum_driver_deduct_transaction_type_correction => '보정';

  @override
  String get enum_driver_deduct_transaction_type_commission => '수수료';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, All rights reserved.';
  }

  @override
  String get wallet_activities_heading => '활동';

  @override
  String get form_required_field_error => '필수 필드';

  @override
  String get button_report_issue => '문제 신고';

  @override
  String get issue_submit_title => '문제 신고';

  @override
  String get issue_subject_placeholder => '주제';

  @override
  String get error_field_cant_be_empty => '비워둘 수 없습니다.';

  @override
  String get issue_description_placeholder => '설명';

  @override
  String get complaint_submit_success_message => '불만 사항이 제출되었습니다. 문의 사항에 대한 지원 담당자의 연락을 기다리십시오.';

  @override
  String get menu_earnings => '수입';

  @override
  String get status_offline_description => '요청을 보려면 온라인에 접속하세요.';

  @override
  String get status_online_description => '라이드 검색';

  @override
  String get order_status_card_title_driver_accepted => '도착을 탭하면 라이더에게 알림이 전송됩니다.';

  @override
  String get order_status_card_title_arrived => '라이더가 알림을 받았습니다.';

  @override
  String get order_status_card_title_started => '목적지로 향하는 중';

  @override
  String get navigation_dialog_title => '탐색할 앱 선택';

  @override
  String get action_ride_options => '라이드 옵션';

  @override
  String rider_expected_time_past(Object minutes) {
    return '라이더는 $minutes 전에 당신을 예상했습니다';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return '라이더는 $minutes 후에 당신을 기다립니다';
  }

  @override
  String get order_payment_status_unpaid => '라이드는 아직 지불되지 않았습니다';

  @override
  String get order_payment_status_paid => '라이더 지불되었습니다';

  @override
  String get action_ride_preferences => '라이더 기본 설정';

  @override
  String get navigation_dialog_title_pickup_point => '픽업 지점으로 이동';

  @override
  String get navigation_title_destination_point => '하차 지점으로 이동';

  @override
  String get rider_options_dialog_title => '라이드 옵션';

  @override
  String get action_cancel_ride => '승차 취소';

  @override
  String get invoice_dialog_body => '당신과 작가가 모두 기꺼이 한다면 온라인 지불 대신 현금을 받을 수도 있습니다.';

  @override
  String get invoice_dialog_heading => '라이더 지불을 기다리는 중';

  @override
  String get invoice_dialog_title => '결제 정보';

  @override
  String get invoice_item_tip => '팁';

  @override
  String get invoice_item_subtotal => '소계';

  @override
  String get add_credit_dialog_title => '크레딧 추가';

  @override
  String get add_credit_dialog_select_payment_method => '지불 방법 선택:';

  @override
  String get add_credit_dialog_choose_amount => '금액 선택';

  @override
  String get order_details_payment_method_title => '지불 방법';

  @override
  String get order_payment_method_cash => '현금';

  @override
  String get order_payment_method_online => '온라인';

  @override
  String get order_details_trip_information_title => '여행 정보';

  @override
  String get issue_submit_body => '라이드와 관련된 모든 문제를 신고할 수 있습니다. 통화 내에서 문제를 도와드리겠습니다.';

  @override
  String get announcements_empty_state_title => '아직 공지가 없습니다!';

  @override
  String get announcements_empty_state_body => '새로운 공지사항이 나오면 알려드리겠습니다.';

  @override
  String get empty_state_title_no_record => '데이터가 없습니다!';

  @override
  String get earnings_empty_state_body => '위에서 설정한 기준으로는 어떠한 기록도 찾을 수 없습니다.';

  @override
  String get action_continue => '계속하다';

  @override
  String get terms_and_condition_first_part => '나는 읽었고 동의합니다';

  @override
  String get terms_and_conditions_clickable_part => '이용약관';

  @override
  String get onboarding_welcome => '어서 오십시오 !';

  @override
  String get action_login_signup => '로그인 / 회원가입';

  @override
  String get action_complete_registration => '등록 완료';

  @override
  String get action_edit_submission => '제출 수정';

  @override
  String get incomplete_registration_description => '귀하의\n 등록 제출';

  @override
  String get pending_review_registration_description => '귀하의 제출물이 검토 중입니다.\n 기다려 주셔서 감사합니다.';

  @override
  String get hard_reject_registration => '제출이 완전히 거부되었습니다!';

  @override
  String get soft_rejection_description => '제출에 문제가 있습니다';

  @override
  String get action_confirm_and_continue => '확인 및 계속';

  @override
  String get ride_preferences_title => '라이드 기본 설정';

  @override
  String get action_back => '뒤';

  @override
  String get title_logout => '로그 아웃';

  @override
  String get logout_dialog_body => '애플리케이션에서 로그아웃하시겠습니까?';

  @override
  String get action_delete_account => '계정 삭제';

  @override
  String get dialog_account_deletion_title => '계정 삭제';

  @override
  String get dialog_account_deletion_body => '계정을 삭제하시겠습니까? 30일 이내에 다시 로그인하여 계정을 복원할 수 있습니다. 이 기간이 지나면 남은 크레딧을 포함하여 데이터가 완전히 제거됩니다.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName 지갑';
  }

  @override
  String get order_status_canceled => '취소 된';

  @override
  String get driver_register_title => '드라이버 등록';

  @override
  String get menu_profile => '내 프로필';

  @override
  String get profile_services_title => '서비스:';

  @override
  String get profile_bank_information_title => '은행 정보';

  @override
  String get profile_vehicle_information_title => '차량 정보';

  @override
  String get profile_distance_traveled => '이동 거리';

  @override
  String get profile_total_trips => '총 여행';

  @override
  String get profile_rating => '평가';

  @override
  String get register_number_title => '전화번호를 입력하세요';

  @override
  String get register_number_subtitle => '등록을 계속할 수 있도록 귀하의 번호로 코드를 보내드립니다.';

  @override
  String get register_verify_code_title => '코드를 입력';

  @override
  String register_verify_code_subtitle(Object number) {
    return '$number번으로 코드를 보냈습니다';
  }

  @override
  String get register_contact_details_title => '연락처 정보를 입력하세요';

  @override
  String get register_payout_details_title => '지불 세부정보를 입력하세요.';

  @override
  String get register_ride_details_title => '라이드 세부정보를 입력하세요.';

  @override
  String get register_profile_photo_title => '프로필 사진 업로드';

  @override
  String get register_profile_photo_subtitle => '업로드한 이미지에서 얼굴을 알아볼 수 있어야 합니다.';

  @override
  String get action_add_photo => '사진 추가';

  @override
  String get register_upload_documents_title => '필요한 서류 업로드';

  @override
  String get register_upload_documents_subtitle => '신원을 확인하고 규정을 준수하려면 아래 문서를 업로드해야 합니다. \\n1-사진이 부착된 신분증\\n2-운전 면허증\\n3-라이드 소유권 문서';

  @override
  String get register_step_phone_number => '셀 번호';

  @override
  String get register_step_verify_number => '번호 확인';

  @override
  String get register_step_contact_details => '연락처';

  @override
  String get register_step_ride_details => '라이드 세부 정보';

  @override
  String get register_step_payout_details => '지불 세부 정보';

  @override
  String get register_step_upload_documents => '문서 업로드';

  @override
  String get profile_uploaded_documents_title => '업로드된 문서';

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
