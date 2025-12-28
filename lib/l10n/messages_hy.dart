import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class SHy extends S {
  SHy([String locale = 'hy']) : super(locale);

  @override
  String get statusOffline => 'Գնալ առցանց';

  @override
  String get statusOnline => 'Անցեք անցանց';

  @override
  String get message_notification_permission_title => 'Ծանուցման թույլտվություն';

  @override
  String get message_notification_permission_denined_message => 'Նախկինում ծանուցման թույլտվությունը մերժվել էր: Նոր պատվերի մասին ծանուցումներ ստանալու համար կարող եք միացնել թույլտվությունը հավելվածի կարգավորումներից:';

  @override
  String get action_ok => 'լավ';

  @override
  String get menu_logout => 'Դուրս գալ';

  @override
  String get menu_about => 'Մասին';

  @override
  String get menu_wallet => 'Դրամապանակ';

  @override
  String get menu_trip_history => 'Ուղևորության պատմություն';

  @override
  String get menu_announcements => 'Հայտարարություններ';

  @override
  String get message_unknown_error => 'Անհայտ սխալ';

  @override
  String get title_success => 'Հաջողություն';

  @override
  String get driver_register_profile_submitted_message => 'Ձեր պրոֆիլը ներկայացված է ադմինիստրատորի հաստատման համար: Դուք կարող եք ավելի ուշ ստուգել՝ ձեր ներկայացման կարգավիճակը տեսնելու համար:';

  @override
  String get driver_registration_approved_demo_mode => 'Սովորաբար, այս փուլում ադմինը պետք է հաստատի վարորդի ներկայացումը Admin Panel-ից: Այնուամենայնիվ, հանուն ցուցադրության, ձեր պրոֆիլն այժմ ավտոմատ կերպով հաստատված է և պատրաստ է օգտագործման:';

  @override
  String get title_important => 'ԿԱՐԵՎՈՐ!';

  @override
  String get cell_number => 'Հեռախոսի համար';

  @override
  String get phone_number_empty => 'Խնդրում ենք մուտքագրել հեռախոսահամարը';

  @override
  String get driver_registration_step_verify_number_title => 'Ստուգեք համարը';

  @override
  String get driver_register_verification_code_textfield_hint => 'Ստուգման կոդը';

  @override
  String get driver_register_contact_details_title => 'Կոնտակտային տվյալներ';

  @override
  String get firstname => 'Անուն';

  @override
  String get lastname => 'Ազգանուն';

  @override
  String get email => 'Էլեկտրոնային փոստ';

  @override
  String get certificate_number => 'Վկայագրի համարը';

  @override
  String get gender => 'Սեռ';

  @override
  String get gender_male => 'Արական';

  @override
  String get gender_female => 'իգական';

  @override
  String get address => 'Հասցե';

  @override
  String get driver_register_ride_details_step_title => 'Ուղևորության մանրամասները';

  @override
  String get plate_number => 'Ափսեի համարը';

  @override
  String get car_production_year => 'Արտադրության տարեթիվ';

  @override
  String get car_model => 'Ավտոմեքենայի մոդել';

  @override
  String get car_color => 'Մեքենայի գույնը';

  @override
  String get driver_register_step_payout_details_title => 'Վճարման մանրամասները';

  @override
  String get bank_name => 'Բանկի անվանումը';

  @override
  String get account_number => 'Հաշվեհամար';

  @override
  String get bank_swift => 'Bank Swift';

  @override
  String get bankRoutingNumber => 'Բանկի երթուղային համարը';

  @override
  String get driver_register_step_documents_title => 'Փաստաթղթեր';

  @override
  String get driver_register_step_documents_heading => 'Վերը նշված փաստաթղթերը ստուգելու համար մեզ անհրաժեշտ է վերբեռնել ստորև ներկայացված փաստաթղթերը';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2- Վարորդական իրավունք';

  @override
  String get driver_register_document_third => '3-Ride-ի սեփականության փաստաթուղթ';

  @override
  String get action_upload_document => 'Վերբեռնեք փաստաթուղթ';

  @override
  String get trip_history_empty_state => 'Նախկին պատվեր չի գրանցվել:';

  @override
  String get wallet_empty_state_message => 'Պատմություն չի գրանցվել:';

  @override
  String get enum_unknown => 'Անհայտ';

  @override
  String get top_up_sheet_pay_button => 'Վճարել';

  @override
  String get loading => 'ԲԵՌՆՈՒՄ';

  @override
  String get available_order_action_accept => 'Ընդունել պատվեր';

  @override
  String get order_status_action_received_cash => 'Կանխիկ վճարում է ստացվել';

  @override
  String get action_cancel => 'Չեղարկել';

  @override
  String get order_status_action_navigate => 'Նավարկություն';

  @override
  String get order_status_action_arrived => 'Ժամանել է';

  @override
  String get order_status_action_start => 'Սկսել Ուղևորությունը';

  @override
  String get order_status_action_finished => 'Ավարտել';

  @override
  String get message_cant_open_url => 'Հրամանը չի աջակցվում';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Բանկային փոխանցում';

  @override
  String get enum_driver_recharge_type_gift => 'Նվեր';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Ներծրագրի վճարում';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Պատվերի վճար';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Հանել';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Ուղղում';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'հանձնաժողով';

  @override
  String copyright_notice(Object company) {
    return 'Հեղինակային իրավունք © $company, Բոլոր իրավունքները պաշտպանված են:';
  }

  @override
  String get wallet_activities_heading => 'Գործունեություն';

  @override
  String get form_required_field_error => 'Պարտադիր դաշտ';

  @override
  String get button_report_issue => 'Հաղորդել խնդրի մասին';

  @override
  String get issue_submit_title => 'Հաղորդել խնդրի մասին';

  @override
  String get issue_subject_placeholder => 'Առարկա';

  @override
  String get error_field_cant_be_empty => 'Չի կարող դատարկ լինել';

  @override
  String get issue_description_placeholder => 'Նկարագրություն';

  @override
  String get complaint_submit_success_message => 'Բողոք է ներկայացվում։ Խնդրում ենք սպասել մեր աջակցության ներկայացուցչի կողմից ձեր հարցման վերաբերյալ կապի:';

  @override
  String get menu_earnings => 'Շահույթ';

  @override
  String get status_offline_description => 'Միացեք առցանց՝ հարցումները տեսնելու համար';

  @override
  String get status_online_description => 'Ուղևորության որոնում';

  @override
  String get order_status_card_title_driver_accepted => 'Rider-ը կտեղեկացվի, երբ հպեք Ժամանել է';

  @override
  String get order_status_card_title_arrived => 'Ռայդերը ծանուցվել է';

  @override
  String get order_status_card_title_started => 'Ուղևորություն դեպի նպատակակետ';

  @override
  String get navigation_dialog_title => 'Ընտրեք հավելված՝ նավարկելու համար';

  @override
  String get action_ride_options => 'Ուղևորության ընտրանքներ';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider-ը սպասում էր ձեզ $minutes առաջ';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider-ը սպասում է ձեզ $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'Ուղևորությունը դեռ չի վճարվել';

  @override
  String get order_payment_status_paid => 'Rider-ը վճարվել է';

  @override
  String get action_ride_preferences => 'Rider Preferences';

  @override
  String get navigation_dialog_title_pickup_point => 'Նավարկեք դեպի հավաքման կետ';

  @override
  String get navigation_title_destination_point => 'Նավարկեք դեպի իջնող կետ';

  @override
  String get rider_options_dialog_title => 'Ուղևորության ընտրանքներ';

  @override
  String get action_cancel_ride => 'Չեղարկել Ուղևորությունը';

  @override
  String get invoice_dialog_body => 'Դուք կարող եք նաև կանխիկ գումար ստանալ առցանց վճարման փոխարեն, եթե դուք և գրողը ցանկանում եք:';

  @override
  String get invoice_dialog_heading => 'Սպասում է վարորդի վճարմանը';

  @override
  String get invoice_dialog_title => 'Վճարման մասին տեղեկատվություն';

  @override
  String get invoice_item_tip => 'Հուշում';

  @override
  String get invoice_item_subtotal => 'Ենթագումար';

  @override
  String get add_credit_dialog_title => 'Ավելացնել վարկ';

  @override
  String get add_credit_dialog_select_payment_method => 'Ընտրեք վճարման եղանակը.';

  @override
  String get add_credit_dialog_choose_amount => 'Ընտրեք գումարը';

  @override
  String get order_details_payment_method_title => 'Վճարման եղանակ';

  @override
  String get order_payment_method_cash => 'Կանխիկ';

  @override
  String get order_payment_method_online => 'Առցանց';

  @override
  String get order_details_trip_information_title => 'Ուղևորության մասին տեղեկատվություն';

  @override
  String get issue_submit_body => 'Դուք կարող եք զեկուցել ձեր ուղևորության հետ կապված ցանկացած խնդրի մասին: Մենք ձեզ կօգնենք հարցի շուրջ զանգի ընթացքում։';

  @override
  String get announcements_empty_state_title => 'Դեռևս հայտարարություններ չկան:';

  @override
  String get announcements_empty_state_body => 'Մենք ձեզ կտեղեկացնենք, երբ նոր հայտարարություններ լինեն։';

  @override
  String get empty_state_title_no_record => 'Տվյալներ չեն գտնվել:';

  @override
  String get earnings_empty_state_body => 'Վերը նշված չափանիշներով մենք չենք կարող որևէ գրառում գտնել:';

  @override
  String get action_continue => 'Շարունակել';

  @override
  String get terms_and_condition_first_part => 'Ես կարդացել եմ և համաձայն եմ';

  @override
  String get terms_and_conditions_clickable_part => 'Պայմաններ եւ դրույթներ';

  @override
  String get onboarding_welcome => 'Բարի գալուստ';

  @override
  String get action_login_signup => 'Մուտք / Գրանցվել';

  @override
  String get action_complete_registration => 'Լրիվ գրանցում';

  @override
  String get action_edit_submission => 'Խմբագրել ներկայացումը';

  @override
  String get incomplete_registration_description => 'Խնդրում ենք լրացնել ձեր\n գրանցման ներկայացում';

  @override
  String get pending_review_registration_description => 'Ձեր ներկայացումը վերանայման փուլում է,\n Շնորհակալություն համբերության համար:';

  @override
  String get hard_reject_registration => 'Ձեր հայտը լիովին մերժված է:';

  @override
  String get soft_rejection_description => 'Ներկայացման հետ կապված խնդիր կա';

  @override
  String get action_confirm_and_continue => 'Հաստատել և շարունակել';

  @override
  String get ride_preferences_title => 'Ուղևորության նախապատվություններ';

  @override
  String get action_back => 'Ետ';

  @override
  String get title_logout => 'Դուրս գալ';

  @override
  String get logout_dialog_body => 'Իսկապե՞ս ուզում եք դուրս գալ հավելվածից:';

  @override
  String get action_delete_account => 'Հաշիվը ջնջել';

  @override
  String get dialog_account_deletion_title => 'Հաշվի ջնջում';

  @override
  String get dialog_account_deletion_body => 'Իսկապե՞ս ուզում եք ջնջել ձեր հաշիվը: Հաշիվը վերականգնելու համար կարող եք նորից մուտք գործել 30 օրվա ընթացքում: Այս ժամանակահատվածից հետո ձեր տվյալները ամբողջությամբ կջնջվեն, ներառյալ ձեր մնացած բոլոր վարկերը:';

  @override
  String wallet_card_title(Object appName) {
    return '$appName դրամապանակ';
  }

  @override
  String get order_status_canceled => 'Չեղարկված է';

  @override
  String get driver_register_title => 'Վարորդի գրանցում';

  @override
  String get menu_profile => 'Իմ էջը';

  @override
  String get profile_services_title => 'Ծառայություններ:';

  @override
  String get profile_bank_information_title => 'Բանկի տեղեկատվություն';

  @override
  String get profile_vehicle_information_title => 'Տրանսպորտային միջոցների մասին տեղեկություններ';

  @override
  String get profile_distance_traveled => 'Անցած հեռավորությունը';

  @override
  String get profile_total_trips => 'Ընդհանուր ուղևորություններ';

  @override
  String get profile_rating => 'Վարկանիշ';

  @override
  String get register_number_title => 'Մուտքագրեք ձեր հեռախոսահամարը';

  @override
  String get register_number_subtitle => 'Մենք կոդ կուղարկենք ձեր համարին՝ գրանցումը շարունակելու համար';

  @override
  String get register_verify_code_title => 'Մուտքագրեք կոդը';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Մենք կոդ ենք ուղարկել $number հասցեին';
  }

  @override
  String get register_contact_details_title => 'Մուտքագրեք ձեր կոնտակտային տվյալները';

  @override
  String get register_payout_details_title => 'Մուտքագրեք ձեր վճարման մանրամասները';

  @override
  String get register_ride_details_title => 'Մուտքագրեք ձեր ուղևորության մանրամասները';

  @override
  String get register_profile_photo_title => 'Վերբեռնեք պրոֆիլի լուսանկարը';

  @override
  String get register_profile_photo_subtitle => 'Ձեր դեմքը պետք է ճանաչելի լինի վերբեռնված պատկերում';

  @override
  String get action_add_photo => 'Ավելացնել լուսանկար';

  @override
  String get register_upload_documents_title => 'Վերբեռնեք անհրաժեշտ փաստաթղթերը';

  @override
  String get register_upload_documents_subtitle => 'Ձեր ինքնությունը հաստատելու և կանոնակարգերին համապատասխանելու համար մեզ անհրաժեշտ կլինի վերբեռնել հետևյալ փաստաթղթերը.';

  @override
  String get register_step_phone_number => 'Հեռախոսի համար';

  @override
  String get register_step_verify_number => 'Ստուգեք համարը';

  @override
  String get register_step_contact_details => 'Կոնտակտային տվյալներ';

  @override
  String get register_step_ride_details => 'Ուղևորության մանրամասները';

  @override
  String get register_step_payout_details => 'Վճարման մանրամասները';

  @override
  String get register_step_upload_documents => 'Վերբեռնեք փաստաթղթեր';

  @override
  String get profile_uploaded_documents_title => 'Վերբեռնված փաստաթղթեր';

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
