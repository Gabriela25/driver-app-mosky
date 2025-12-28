import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class SRu extends S {
  SRu([String locale = 'ru']) : super(locale);

  @override
  String get statusOffline => 'Выйти в онлайн';

  @override
  String get statusOnline => 'Перейти в автономный режим';

  @override
  String get message_notification_permission_title => 'Разрешение на уведомление';

  @override
  String get message_notification_permission_denined_message => 'Ранее разрешение на уведомление было отклонено. Чтобы получать уведомления о новых заказах, вы можете включить разрешение в настройках приложения.';

  @override
  String get action_ok => 'ХОРОШО';

  @override
  String get menu_logout => 'Выйти';

  @override
  String get menu_about => 'О';

  @override
  String get menu_wallet => 'Бумажник';

  @override
  String get menu_trip_history => 'История поездок';

  @override
  String get menu_announcements => 'Объявления';

  @override
  String get message_unknown_error => 'Неизвестная ошибка';

  @override
  String get title_success => 'Успех';

  @override
  String get driver_register_profile_submitted_message => 'Ваш профиль отправлен на утверждение администратора. Вы можете вернуться позже, чтобы увидеть статус вашего представления.';

  @override
  String get driver_registration_approved_demo_mode => 'Обычно на этом этапе администратору необходимо одобрить отправку драйвера из панели администратора. Однако ради демонстрации ваш профиль теперь автоматически одобрен и готов к использованию.';

  @override
  String get title_important => 'ВАЖНЫЙ!';

  @override
  String get cell_number => 'Сотовый номер';

  @override
  String get phone_number_empty => 'Пожалуйста, введите номер телефона';

  @override
  String get driver_registration_step_verify_number_title => 'Подтвердить номер';

  @override
  String get driver_register_verification_code_textfield_hint => 'Код подтверждения';

  @override
  String get driver_register_contact_details_title => 'Контактная информация';

  @override
  String get firstname => 'Имя';

  @override
  String get lastname => 'Фамилия';

  @override
  String get email => 'Эл. почта';

  @override
  String get certificate_number => 'Номер сертификата';

  @override
  String get gender => 'Пол';

  @override
  String get gender_male => 'Мужской';

  @override
  String get gender_female => 'женский';

  @override
  String get address => 'Адрес';

  @override
  String get driver_register_ride_details_step_title => 'Детали поездки';

  @override
  String get plate_number => 'Номерной знак';

  @override
  String get car_production_year => 'Производственный год';

  @override
  String get car_model => 'Модель автомобиля';

  @override
  String get car_color => 'Цвет автомобиля';

  @override
  String get driver_register_step_payout_details_title => 'Детали выплаты';

  @override
  String get bank_name => 'Название банка';

  @override
  String get account_number => 'Номер счета';

  @override
  String get bank_swift => 'Банк Свифт';

  @override
  String get bankRoutingNumber => 'Маршрутный номер банка';

  @override
  String get driver_register_step_documents_title => 'Документы';

  @override
  String get driver_register_step_documents_heading => 'Чтобы проверить вышеуказанные документы, нам необходимо загрузить следующие документы.';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-водительские права';

  @override
  String get driver_register_document_third => 'Документ о праве собственности 3-Ride';

  @override
  String get action_upload_document => 'Загрузить документ';

  @override
  String get trip_history_empty_state => 'Прошлый заказ не зарегистрирован.';

  @override
  String get wallet_empty_state_message => 'История не записана.';

  @override
  String get enum_unknown => 'Неизвестный';

  @override
  String get top_up_sheet_pay_button => 'Платить';

  @override
  String get loading => 'ЗАГРУЗКА';

  @override
  String get available_order_action_accept => 'Принять заказ';

  @override
  String get order_status_action_received_cash => 'Оплата наличными получена';

  @override
  String get action_cancel => 'Отмена';

  @override
  String get order_status_action_navigate => 'Навигация';

  @override
  String get order_status_action_arrived => 'Прибыли';

  @override
  String get order_status_action_start => 'Начать поездку';

  @override
  String get order_status_action_finished => 'Заканчивать';

  @override
  String get message_cant_open_url => 'Команда не поддерживается';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Банковский перевод';

  @override
  String get enum_driver_recharge_type_gift => 'Подарок';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Оплата в приложении';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Плата за заказ';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Отзывать';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Коррекция';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'комиссия';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Все права защищены.';
  }

  @override
  String get wallet_activities_heading => 'мероприятия';

  @override
  String get form_required_field_error => 'Обязательное поле';

  @override
  String get button_report_issue => 'Сообщить о проблеме';

  @override
  String get issue_submit_title => 'Сообщить о проблеме';

  @override
  String get issue_subject_placeholder => 'Предмет';

  @override
  String get error_field_cant_be_empty => 'Не может быть пустым';

  @override
  String get issue_description_placeholder => 'Описание';

  @override
  String get complaint_submit_success_message => 'Жалоба подается. Пожалуйста, подождите, пока наш представитель службы поддержки свяжется с вами по поводу вашего запроса.';

  @override
  String get menu_earnings => 'Доход';

  @override
  String get status_offline_description => 'Подключитесь к Интернету, чтобы увидеть запросы';

  @override
  String get status_online_description => 'Поиск поездки';

  @override
  String get order_status_card_title_driver_accepted => 'Пользователь получит уведомление, как только вы нажмете «Прибыл».';

  @override
  String get order_status_card_title_arrived => 'Райдер был уведомлен';

  @override
  String get order_status_card_title_started => 'Направление к месту назначения';

  @override
  String get navigation_dialog_title => 'Выберите приложение для навигации';

  @override
  String get action_ride_options => 'Варианты поездки';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Райдер ожидал вас $minutes назад';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Райдер ожидает вас через $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'Поездка еще не оплачена';

  @override
  String get order_payment_status_paid => 'Райдер был оплачен';

  @override
  String get action_ride_preferences => 'Настройки пользователя';

  @override
  String get navigation_dialog_title_pickup_point => 'Направиться к пункту выдачи';

  @override
  String get navigation_title_destination_point => 'Перейдите к месту высадки';

  @override
  String get rider_options_dialog_title => 'Варианты поездки';

  @override
  String get action_cancel_ride => 'Отменить поездку';

  @override
  String get invoice_dialog_body => 'Вы также можете получить наличные вместо онлайн-платежа, если вы и автор готовы к этому.';

  @override
  String get invoice_dialog_heading => 'Ожидание оплаты райдера';

  @override
  String get invoice_dialog_title => 'Платежная информация';

  @override
  String get invoice_item_tip => 'Кончик';

  @override
  String get invoice_item_subtotal => 'Промежуточный итог';

  @override
  String get add_credit_dialog_title => 'Добавить кредит';

  @override
  String get add_credit_dialog_select_payment_method => 'Выберите метод оплаты:';

  @override
  String get add_credit_dialog_choose_amount => 'Выберите сумму';

  @override
  String get order_details_payment_method_title => 'Метод оплаты';

  @override
  String get order_payment_method_cash => 'Наличные';

  @override
  String get order_payment_method_online => 'онлайн';

  @override
  String get order_details_trip_information_title => 'Информация о поездке';

  @override
  String get issue_submit_body => 'Вы можете сообщить о любой проблеме, возникшей во время поездки. Поможем решить вопрос в рамках звонка.';

  @override
  String get announcements_empty_state_title => 'Объявлений пока нет!';

  @override
  String get announcements_empty_state_body => 'Мы сообщим вам, когда появятся новые объявления.';

  @override
  String get empty_state_title_no_record => 'Данные не найдены!';

  @override
  String get earnings_empty_state_body => 'По указанным выше критериям мы не можем найти ни одной записи.';

  @override
  String get action_continue => 'Продолжать';

  @override
  String get terms_and_condition_first_part => 'Я прочитал и согласен с';

  @override
  String get terms_and_conditions_clickable_part => 'Условия';

  @override
  String get onboarding_welcome => 'Добро пожаловать !';

  @override
  String get action_login_signup => 'Войти Зарегистрироваться';

  @override
  String get action_complete_registration => 'Завершить регистрацию';

  @override
  String get action_edit_submission => 'Изменить отправку';

  @override
  String get incomplete_registration_description => 'Пожалуйста, заполните\n подача заявки на регистрацию';

  @override
  String get pending_review_registration_description => 'Ваша заявка находится на рассмотрении,\n Спасибо за терпение.';

  @override
  String get hard_reject_registration => 'Ваша заявка полностью отклонена!';

  @override
  String get soft_rejection_description => 'Возникла проблема с отправкой';

  @override
  String get action_confirm_and_continue => 'Подтвердить и продолжить';

  @override
  String get ride_preferences_title => 'Настройки поездки';

  @override
  String get action_back => 'Назад';

  @override
  String get title_logout => 'Выйти';

  @override
  String get logout_dialog_body => 'Вы уверены, что хотите выйти из приложения?';

  @override
  String get action_delete_account => 'Удалить аккаунт';

  @override
  String get dialog_account_deletion_title => 'Удаление аккаунта';

  @override
  String get dialog_account_deletion_body => 'Вы уверены, что хотите удалить свой аккаунт? Вы можете снова войти в систему в течение 30 дней, чтобы восстановить учетную запись. По истечении этого периода ваши данные будут полностью удалены, включая все оставшиеся кредиты.';

  @override
  String wallet_card_title(Object appName) {
    return 'Кошелек $appName';
  }

  @override
  String get order_status_canceled => 'Отменено';

  @override
  String get driver_register_title => 'Регистрация водителя';

  @override
  String get menu_profile => 'Мой профиль';

  @override
  String get profile_services_title => 'Услуги:';

  @override
  String get profile_bank_information_title => 'Банковская информация';

  @override
  String get profile_vehicle_information_title => 'Информация об автомобиле';

  @override
  String get profile_distance_traveled => 'Пройденный путь';

  @override
  String get profile_total_trips => 'Всего поездок';

  @override
  String get profile_rating => 'Рейтинг';

  @override
  String get register_number_title => 'Введите свой номер телефона';

  @override
  String get register_number_subtitle => 'Мы отправим код на ваш номер для продолжения регистрации';

  @override
  String get register_verify_code_title => 'Введите код';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Мы отправили код на $number';
  }

  @override
  String get register_contact_details_title => 'Введите свои контактные данные';

  @override
  String get register_payout_details_title => 'Введите данные для выплаты';

  @override
  String get register_ride_details_title => 'Введите данные о поездке';

  @override
  String get register_profile_photo_title => 'Загрузить фото профиля';

  @override
  String get register_profile_photo_subtitle => 'Ваше лицо должно быть узнаваемо на загруженном изображении';

  @override
  String get action_add_photo => 'Добавить фото';

  @override
  String get register_upload_documents_title => 'Загрузите необходимые документы';

  @override
  String get register_upload_documents_subtitle => 'Чтобы подтвердить вашу личность и соблюдать правила, нам нужно, чтобы вы загрузили следующие документы: \\n1-Удостоверение личности с фотографией\\n2-Водительские права\\n3-Документ о праве собственности на автомобиль';

  @override
  String get register_step_phone_number => 'Сотовый номер';

  @override
  String get register_step_verify_number => 'Подтвердить номер';

  @override
  String get register_step_contact_details => 'Контактная информация';

  @override
  String get register_step_ride_details => 'Детали поездки';

  @override
  String get register_step_payout_details => 'Детали выплаты';

  @override
  String get register_step_upload_documents => 'Загрузить документы';

  @override
  String get profile_uploaded_documents_title => 'Загруженные документы';

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
