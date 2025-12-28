import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class SJa extends S {
  SJa([String locale = 'ja']) : super(locale);

  @override
  String get statusOffline => 'オンライン化する';

  @override
  String get statusOnline => 'オフラインにする';

  @override
  String get message_notification_permission_title => '通知許可';

  @override
  String get message_notification_permission_denined_message => '以前に通知許可が拒否されました。新規注文の通知を受け取るために、アプリの設定から許可を有効にすることができます。';

  @override
  String get action_ok => 'わかった';

  @override
  String get menu_logout => 'ログアウト';

  @override
  String get menu_about => '約';

  @override
  String get menu_wallet => '財布';

  @override
  String get menu_trip_history => '旅行履歴';

  @override
  String get menu_announcements => 'お知らせ';

  @override
  String get message_unknown_error => '未知のエラー';

  @override
  String get title_success => '成功';

  @override
  String get driver_register_profile_submitted_message => 'あなたのプロフィールは管理者の承認のために送信されます。後でもう一度チェックして、提出のステータスを確認できます。';

  @override
  String get driver_registration_approved_demo_mode => '通常、この段階で、管理者は管理者パネルからのドライバーの送信を承認する必要があります。ただし、デモのために、プロファイルは現在自動的に承認されており、使用する準備ができています。';

  @override
  String get title_important => '重要！';

  @override
  String get cell_number => 'セル番号';

  @override
  String get phone_number_empty => '電話番号を入力してください';

  @override
  String get driver_registration_step_verify_number_title => '番号の確認';

  @override
  String get driver_register_verification_code_textfield_hint => '検証コード';

  @override
  String get driver_register_contact_details_title => '連絡先の詳細';

  @override
  String get firstname => 'ファーストネーム';

  @override
  String get lastname => '苗字';

  @override
  String get email => 'Eメール';

  @override
  String get certificate_number => '証明書番号';

  @override
  String get gender => '性別';

  @override
  String get gender_male => '男';

  @override
  String get gender_female => '女性';

  @override
  String get address => '住所';

  @override
  String get driver_register_ride_details_step_title => '乗車の詳細';

  @override
  String get plate_number => 'プレートナンバー';

  @override
  String get car_production_year => '製造年';

  @override
  String get car_model => '車のモデル';

  @override
  String get car_color => '車の色';

  @override
  String get driver_register_step_payout_details_title => '支払いの詳細';

  @override
  String get bank_name => '銀行名';

  @override
  String get account_number => '口座番号';

  @override
  String get bank_swift => 'バンク・スウィフト';

  @override
  String get bankRoutingNumber => '銀行ルーティング番号';

  @override
  String get driver_register_step_documents_title => 'ドキュメント';

  @override
  String get driver_register_step_documents_heading => '上記の書類を確認するには、以下の書類をアップロードする必要があります';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2 運転免許証';

  @override
  String get driver_register_document_third => '3-Rideの所有権文書';

  @override
  String get action_upload_document => 'ドキュメントのアップロード';

  @override
  String get trip_history_empty_state => '過去の注文は記録されていません。';

  @override
  String get wallet_empty_state_message => '履歴が記録されていません。';

  @override
  String get enum_unknown => '不明';

  @override
  String get top_up_sheet_pay_button => '支払い';

  @override
  String get loading => '読み込み中';

  @override
  String get available_order_action_accept => '注文を受け入れる';

  @override
  String get order_status_action_received_cash => '現金支払いの受領';

  @override
  String get action_cancel => 'キャンセル';

  @override
  String get order_status_action_navigate => 'ナビゲート';

  @override
  String get order_status_action_arrived => '到着した';

  @override
  String get order_status_action_start => '旅行を開始';

  @override
  String get order_status_action_finished => '終了';

  @override
  String get message_cant_open_url => 'コマンドはサポートされていません';

  @override
  String get enum_driver_recharge_type_bank_transfer => '銀行振込';

  @override
  String get enum_driver_recharge_type_gift => '贈り物';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'アプリ内決済';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => '注文手数料';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => '撤退';

  @override
  String get enum_driver_deduct_transaction_type_correction => '修正';

  @override
  String get enum_driver_deduct_transaction_type_commission => '手数料';

  @override
  String copyright_notice(Object company) {
    return '著作権 © $company、無断複写・転載を禁じます。';
  }

  @override
  String get wallet_activities_heading => '活動内容';

  @override
  String get form_required_field_error => '必須フィールド';

  @override
  String get button_report_issue => '問題を報告する';

  @override
  String get issue_submit_title => '問題を報告する';

  @override
  String get issue_subject_placeholder => '主題';

  @override
  String get error_field_cant_be_empty => '空にすることはできません';

  @override
  String get issue_description_placeholder => '説明';

  @override
  String get complaint_submit_success_message => '苦情が提出されます。お問い合わせ内容については、弊社サポート担当者からの連絡をお待ちください。';

  @override
  String get menu_earnings => '収益';

  @override
  String get status_offline_description => 'オンラインでリクエストを確認する';

  @override
  String get status_online_description => '乗り物を探しています';

  @override
  String get order_status_card_title_driver_accepted => '[到着] をタップすると乗客に通知されます';

  @override
  String get order_status_card_title_arrived => 'ライダーに通知されました';

  @override
  String get order_status_card_title_started => '目的地に向かっています';

  @override
  String get navigation_dialog_title => 'ナビゲートするアプリを選択してください';

  @override
  String get action_ride_options => '乗車オプション';

  @override
  String rider_expected_time_past(Object minutes) {
    return '乗客は $minutes 前にあなたを待っていました';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return '乗客は $minutes 以内にあなたを待っています';
  }

  @override
  String get order_payment_status_unpaid => '乗車料金はまだ支払われていません';

  @override
  String get order_payment_status_paid => 'ライダーは支払われました';

  @override
  String get action_ride_preferences => '乗客の好み';

  @override
  String get navigation_dialog_title_pickup_point => 'ピックアップポイントに移動';

  @override
  String get navigation_title_destination_point => '降車地点に移動';

  @override
  String get rider_options_dialog_title => '乗車オプション';

  @override
  String get action_cancel_ride => '乗車をキャンセル';

  @override
  String get invoice_dialog_body => 'あなたと作家の両方が喜んでいる場合は、オンライン支払いの代わりに現金を受け取ることもできます.';

  @override
  String get invoice_dialog_heading => '乗客の支払いを待っています';

  @override
  String get invoice_dialog_title => '支払い情報';

  @override
  String get invoice_item_tip => 'ヒント';

  @override
  String get invoice_item_subtotal => '小計';

  @override
  String get add_credit_dialog_title => 'クレジットを追加';

  @override
  String get add_credit_dialog_select_payment_method => 'お支払い方法の選択:';

  @override
  String get add_credit_dialog_choose_amount => '金額を選択';

  @override
  String get order_details_payment_method_title => '支払方法';

  @override
  String get order_payment_method_cash => '現金';

  @override
  String get order_payment_method_online => 'オンライン';

  @override
  String get order_details_trip_information_title => '旅行情報';

  @override
  String get issue_submit_body => '乗車中に発生した問題を報告できます。お電話で問題を解決いたします。';

  @override
  String get announcements_empty_state_title => 'お知らせはまだありません！';

  @override
  String get announcements_empty_state_body => '新しい発表が来たらお知らせします。';

  @override
  String get empty_state_title_no_record => '何もデータが見つかりませんでした！';

  @override
  String get earnings_empty_state_body => '上記の基準では、レコードが見つかりません。';

  @override
  String get action_continue => '継続する';

  @override
  String get terms_and_condition_first_part => '私は読み、同意します';

  @override
  String get terms_and_conditions_clickable_part => '利用規約';

  @override
  String get onboarding_welcome => 'いらっしゃいませ ！';

  @override
  String get action_login_signup => 'ログインサインアップ';

  @override
  String get action_complete_registration => '登録完了';

  @override
  String get action_edit_submission => '提出物を編集';

  @override
  String get incomplete_registration_description => '記入してください\n 登録提出';

  @override
  String get pending_review_registration_description => 'あなたの提出物は審査中です。\n お待ちいただきありがとうございます。';

  @override
  String get hard_reject_registration => 'あなたの提出物は完全に拒否されました!';

  @override
  String get soft_rejection_description => '提出物に問題がある';

  @override
  String get action_confirm_and_continue => '確認して続行';

  @override
  String get ride_preferences_title => '乗車設定';

  @override
  String get action_back => '戻る';

  @override
  String get title_logout => 'ログアウト';

  @override
  String get logout_dialog_body => 'アプリケーションからログアウトしてもよろしいですか?';

  @override
  String get action_delete_account => 'アカウントを削除する';

  @override
  String get dialog_account_deletion_title => 'アカウントの削除';

  @override
  String get dialog_account_deletion_body => 'アカウントを削除してもよろしいですか？アカウントを復元するには、30 日以内に再度ログインしてください。この期間が過ぎると、残りのすべてのクレジットを含め、データが完全に削除されます。';

  @override
  String wallet_card_title(Object appName) {
    return '$appName ウォレット';
  }

  @override
  String get order_status_canceled => 'キャンセル';

  @override
  String get driver_register_title => 'ドライバー登録';

  @override
  String get menu_profile => '私のプロフィール';

  @override
  String get profile_services_title => 'サービス:';

  @override
  String get profile_bank_information_title => '銀行情報';

  @override
  String get profile_vehicle_information_title => '車両情報';

  @override
  String get profile_distance_traveled => '走行距離';

  @override
  String get profile_total_trips => '合計旅行';

  @override
  String get profile_rating => '評価';

  @override
  String get register_number_title => '電話番号を入力してください';

  @override
  String get register_number_subtitle => '登録を続行するためのコードをあなたの番号に送信します';

  @override
  String get register_verify_code_title => 'コードを入力する';

  @override
  String register_verify_code_subtitle(Object number) {
    return '$number にコードを送信しました';
  }

  @override
  String get register_contact_details_title => '連絡先の詳細を入力してください';

  @override
  String get register_payout_details_title => '支払いの詳細を入力してください';

  @override
  String get register_ride_details_title => '乗車の詳細を入力してください';

  @override
  String get register_profile_photo_title => 'プロフィール写真をアップロード';

  @override
  String get register_profile_photo_subtitle => 'アップロードされた画像であなたの顔を認識できる必要があります';

  @override
  String get action_add_photo => '写真を追加';

  @override
  String get register_upload_documents_title => '必要書類のアップロード';

  @override
  String get register_upload_documents_subtitle => '身元を確認し、規制に準拠するために、以下の書類をアップロードする必要があります: \\n1-写真付き身分証明書\\n2-運転免許証\\n3-乗り物の所有権に関する書類';

  @override
  String get register_step_phone_number => 'セル番号';

  @override
  String get register_step_verify_number => '番号の確認';

  @override
  String get register_step_contact_details => '連絡先の詳細';

  @override
  String get register_step_ride_details => '乗車の詳細';

  @override
  String get register_step_payout_details => '支払いの詳細';

  @override
  String get register_step_upload_documents => 'ドキュメントのアップロード';

  @override
  String get profile_uploaded_documents_title => 'アップロードされたドキュメント';

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
