import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get statusOffline => 'Go Online';

  @override
  String get statusOnline => 'Go Offline';

  @override
  String get message_notification_permission_title => 'Notification Permission';

  @override
  String get message_notification_permission_denined_message => 'Notification permission was denied previously. In order to get new order notifications, you can enable the permission from app settings.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Logout';

  @override
  String get menu_about => 'About';

  @override
  String get menu_wallet => 'Wallet';

  @override
  String get menu_trip_history => 'Trip History';

  @override
  String get menu_announcements => 'Announcements';

  @override
  String get message_unknown_error => 'Unknown error';

  @override
  String get title_success => 'Success';

  @override
  String get driver_register_profile_submitted_message => 'Your profile is submitted for admin approval. You can check back later to see the status of your submission.';

  @override
  String get driver_registration_approved_demo_mode => 'Typically, at this point, the administrator would have to review and approve the driver\'s submission through the Admin Panel. However, for the purpose of this demonstration, your profile has been automatically approved and is now ready for use.';

  @override
  String get title_important => 'IMPORTANT!';

  @override
  String get cell_number => 'Cell Number';

  @override
  String get phone_number_empty => 'Please enter the phone number';

  @override
  String get driver_registration_step_verify_number_title => 'Verify Number';

  @override
  String get driver_register_verification_code_textfield_hint => 'Verification code';

  @override
  String get driver_register_contact_details_title => 'Contact Details';

  @override
  String get firstname => 'First Name';

  @override
  String get lastname => 'Last Name';

  @override
  String get email => 'E-Mail';

  @override
  String get certificate_number => 'License Number';

  @override
  String get gender => 'Gender';

  @override
  String get gender_male => 'Male';

  @override
  String get gender_female => 'Female';

  @override
  String get address => 'Address';

  @override
  String get driver_register_ride_details_step_title => 'Ride Details';

  @override
  String get plate_number => 'Plate Number';

  @override
  String get car_production_year => 'Production Year';

  @override
  String get car_model => 'Car Model';

  @override
  String get car_color => 'Car Color';

  @override
  String get driver_register_step_payout_details_title => 'Payout Details';

  @override
  String get bank_name => 'Bank Name';

  @override
  String get account_number => 'Account Number';

  @override
  String get bank_swift => 'Swift Code';

  @override
  String get bankRoutingNumber => 'Bank Routing Number';

  @override
  String get driver_register_step_documents_title => 'Upload Documents';

  @override
  String get driver_register_step_documents_heading => 'In order to verify above documents, we require below documents being uploaded';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-Driver\'s License';

  @override
  String get driver_register_document_third => '3-Vehicle Registration';

  @override
  String get action_upload_document => 'Upload Document';

  @override
  String get trip_history_empty_state => 'No past order has been recorded.';

  @override
  String get wallet_empty_state_message => 'No history recorded.';

  @override
  String get enum_unknown => 'Unkonwn';

  @override
  String get top_up_sheet_pay_button => 'Pay';

  @override
  String get loading => 'LOADING';

  @override
  String get available_order_action_accept => 'Accept Order';

  @override
  String get order_status_action_received_cash => 'Cash Payment received';

  @override
  String get action_cancel => 'Cancel';

  @override
  String get order_status_action_navigate => 'Navigate';

  @override
  String get order_status_action_arrived => 'Arrived to pickup location';

  @override
  String get order_status_action_start => 'Start Trip';

  @override
  String get order_status_action_finished => 'Finish';

  @override
  String get message_cant_open_url => 'Command is not supported';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Bank Transfer';

  @override
  String get enum_driver_recharge_type_gift => 'Gift';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'In-App Payment';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Order Fee';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Withdraw';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Correction';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Commission';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, All rights reserved.';
  }

  @override
  String get wallet_activities_heading => 'Activities';

  @override
  String get form_required_field_error => 'Required field';

  @override
  String get button_report_issue => 'Report an issue';

  @override
  String get issue_submit_title => 'Report an issue';

  @override
  String get issue_subject_placeholder => 'Subject';

  @override
  String get error_field_cant_be_empty => 'Can not be empty';

  @override
  String get issue_description_placeholder => 'Description';

  @override
  String get complaint_submit_success_message => 'Complaint is submitted. Please wait for a contact from our support representative about your inquiry.';

  @override
  String get menu_earnings => 'Earnings';

  @override
  String get status_offline_description => 'Get online to see requests';

  @override
  String get status_online_description => 'Searching for ride';

  @override
  String get order_status_card_title_driver_accepted => 'Rider will be notified once you tap Arrived';

  @override
  String get order_status_card_title_arrived => 'Rider has been notified';

  @override
  String get order_status_card_title_started => 'Heading to the destination';

  @override
  String get navigation_dialog_title => 'Choose an app to navigate with';

  @override
  String get action_ride_options => 'Ride Options';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider expected you $minutes mins ago';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider expects you in $minutes mins';
  }

  @override
  String get order_payment_status_unpaid => 'Ride hasn\'t been paid yet';

  @override
  String get order_payment_status_paid => 'Ride Has been paid';

  @override
  String get action_ride_preferences => 'Rider Preferences';

  @override
  String get navigation_dialog_title_pickup_point => 'Navigate to pickup point';

  @override
  String get navigation_title_destination_point => 'Navigate to drop off point';

  @override
  String get rider_options_dialog_title => 'Ride Options';

  @override
  String get action_cancel_ride => 'Cancel Ride';

  @override
  String get invoice_dialog_body => 'You can also receive cash instead of an online payment if you and the rider are both willing to.';

  @override
  String get invoice_dialog_heading => 'Waiting for rider payment';

  @override
  String get invoice_dialog_title => 'Payment Info';

  @override
  String get invoice_item_tip => 'Tip';

  @override
  String get invoice_item_subtotal => 'Subtotal';

  @override
  String get add_credit_dialog_title => 'Add Credit';

  @override
  String get add_credit_dialog_select_payment_method => 'Select Payment Method:';

  @override
  String get add_credit_dialog_choose_amount => 'Choose amount';

  @override
  String get order_details_payment_method_title => 'Payment Method';

  @override
  String get order_payment_method_cash => 'Cash';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Trip Information';

  @override
  String get issue_submit_body => 'You can report any issue you had with your ride. We will help you with the issue within a call.';

  @override
  String get announcements_empty_state_title => 'No Announcements yet!';

  @override
  String get announcements_empty_state_body => 'We will notify you when new announcements comes.';

  @override
  String get empty_state_title_no_record => 'No Data Found!';

  @override
  String get earnings_empty_state_body => 'At the criteria set above, we can\'t find any records.';

  @override
  String get action_continue => 'Continue';

  @override
  String get terms_and_condition_first_part => 'I have read and agree with ';

  @override
  String get terms_and_conditions_clickable_part => 'Terms & Conditions';

  @override
  String get onboarding_welcome => 'Bienvenido';

  @override
  String get action_login_signup => 'Login / Sign Up';

  @override
  String get action_complete_registration => 'Complete registration';

  @override
  String get action_edit_submission => 'Edit submission';

  @override
  String get incomplete_registration_description => 'Please complete your \n registration submission';

  @override
  String get pending_review_registration_description => 'Your submission is under review, \n Thanks for your patience.';

  @override
  String get hard_reject_registration => 'Your Submission is fully rejected!';

  @override
  String get soft_rejection_description => 'There is a problem with the submission';

  @override
  String get action_confirm_and_continue => 'Confirm & Continue';

  @override
  String get ride_preferences_title => 'Ride Preferences';

  @override
  String get action_back => 'Back';

  @override
  String get title_logout => 'Logout';

  @override
  String get logout_dialog_body => 'Are you sure you want to log out of the application?';

  @override
  String get action_delete_account => 'Delete Account';

  @override
  String get dialog_account_deletion_title => 'Account deletion';

  @override
  String get dialog_account_deletion_body => 'Are you sure you want to delete your account? You can log in again within 30 days to restore the account. After this period, your data gets completely removed, including all your remaining credits.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Wallet';
  }

  @override
  String get order_status_canceled => 'Canceled';

  @override
  String get driver_register_title => 'Driver Registration';

  @override
  String get menu_profile => 'My profile';

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
  String get action_add_photo => 'Add photo';

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
