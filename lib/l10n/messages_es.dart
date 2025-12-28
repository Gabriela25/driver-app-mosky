import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String get statusOffline => 'Ir en línea';

  @override
  String get statusOnline => 'Salir de línea';

  @override
  String get message_notification_permission_title => 'Permiso de notificación';

  @override
  String get message_notification_permission_denined_message => 'El permiso de notificación fue denegado anteriormente. Para recibir notificaciones de nuevos pedidos, puede habilitar el permiso desde la configuración de la aplicación.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Cerrar sesión';

  @override
  String get menu_about => 'Sobre';

  @override
  String get menu_wallet => 'Cartera';

  @override
  String get menu_trip_history => 'Historial de viajes';

  @override
  String get menu_announcements => 'Anuncios';

  @override
  String get message_unknown_error => 'Error desconocido';

  @override
  String get title_success => 'Éxito';

  @override
  String get driver_register_profile_submitted_message => 'Su perfil se envía para la aprobación del administrador. Puede volver a consultar más tarde para ver el estado de su envío.';

  @override
  String get driver_registration_approved_demo_mode => 'Normalmente, en esta etapa, el administrador necesitaría aprobar el envío del controlador desde el Panel de administración. Sin embargo, por el bien de la demostración, su perfil se aprueba automáticamente ahora y está listo para usar.';

  @override
  String get title_important => '¡IMPORTANTE!';

  @override
  String get cell_number => 'Numero de celular';

  @override
  String get phone_number_empty => 'Por favor ingrese el número de teléfono';

  @override
  String get driver_registration_step_verify_number_title => 'Verificar número';

  @override
  String get driver_register_verification_code_textfield_hint => 'Código de verificación';

  @override
  String get driver_register_contact_details_title => 'Detalles de contacto';

  @override
  String get firstname => 'Primer nombre';

  @override
  String get lastname => 'Apellido';

  @override
  String get email => 'Email';

  @override
  String get certificate_number => 'Número de licencia';

  @override
  String get gender => 'Género';

  @override
  String get gender_male => 'Masculino';

  @override
  String get gender_female => 'Femenino';

  @override
  String get address => 'Dirección';

  @override
  String get driver_register_ride_details_step_title => 'Detalles del viaje';

  @override
  String get plate_number => 'Número de placa';

  @override
  String get car_production_year => 'Año del coche';

  @override
  String get car_model => 'Modelo del coche';

  @override
  String get car_color => 'Color del coche';

  @override
  String get driver_register_step_payout_details_title => 'Detalles de pago';

  @override
  String get bank_name => 'Nombre del banco';

  @override
  String get account_number => 'Número de cuenta';

  @override
  String get bank_swift => 'banco rápido';

  @override
  String get bankRoutingNumber => 'Número de ruta bancaria';

  @override
  String get driver_register_step_documents_title => 'Documentos';

  @override
  String get driver_register_step_documents_heading => 'Para verificar los documentos anteriores, requerimos que se carguen los siguientes documentos';

  @override
  String get driver_register_document_first => '1-identificación';

  @override
  String get driver_register_document_second => '2-Licencia de conducir';

  @override
  String get driver_register_document_third => 'Documento de propiedad de 3-Ride';

  @override
  String get action_upload_document => 'Subir documento';

  @override
  String get trip_history_empty_state => 'No se ha registrado ningún pedido anterior.';

  @override
  String get wallet_empty_state_message => 'Sin antecedentes registrados.';

  @override
  String get enum_unknown => 'Desconocido';

  @override
  String get top_up_sheet_pay_button => 'Pagar';

  @override
  String get loading => 'CARGANDO';

  @override
  String get available_order_action_accept => 'Aceptar pedido';

  @override
  String get order_status_action_received_cash => 'Pago en efectivo recibido';

  @override
  String get action_cancel => 'Cancelar';

  @override
  String get order_status_action_navigate => 'Navegar';

  @override
  String get order_status_action_arrived => 'Llegué';

  @override
  String get order_status_action_start => 'Iniciar viaje';

  @override
  String get order_status_action_finished => 'Finalizar';

  @override
  String get message_cant_open_url => 'El comando no es compatible';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Transferencia bancaria';

  @override
  String get enum_driver_recharge_type_gift => 'Regalo';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Pago en la aplicación';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Tarifa de pedido';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Retirar';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Corrección';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Comisión';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Todos los derechos reservados.';
  }

  @override
  String get wallet_activities_heading => 'Actividades';

  @override
  String get form_required_field_error => 'Campo requerido';

  @override
  String get button_report_issue => 'Reportar un problema';

  @override
  String get issue_submit_title => 'Reportar un problema';

  @override
  String get issue_subject_placeholder => 'Tema';

  @override
  String get error_field_cant_be_empty => 'No puede estar vacío';

  @override
  String get issue_description_placeholder => 'Descripción';

  @override
  String get complaint_submit_success_message => 'Se presenta denuncia. Espere un contacto de nuestro representante de soporte sobre su consulta.';

  @override
  String get menu_earnings => 'Ganancias';

  @override
  String get status_offline_description => 'Conéctese en línea para ver las solicitudes';

  @override
  String get status_online_description => 'Buscando paseo';

  @override
  String get order_status_card_title_driver_accepted => 'El pasajero será notificado una vez que toque Llegado';

  @override
  String get order_status_card_title_arrived => 'El ciclista ha sido notificado';

  @override
  String get order_status_card_title_started => 'Rumbo al destino';

  @override
  String get navigation_dialog_title => 'Elija una aplicación para navegar';

  @override
  String get action_ride_options => 'Opciones de viaje';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider te esperaba hace $minutes';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider te espera en $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'El viaje aún no se ha pagado';

  @override
  String get order_payment_status_paid => 'Jinete ha sido pagado';

  @override
  String get action_ride_preferences => 'Preferencias del pasajero';

  @override
  String get navigation_dialog_title_pickup_point => 'Navegar al punto de recogida';

  @override
  String get navigation_title_destination_point => 'Navegar al punto de entrega';

  @override
  String get rider_options_dialog_title => 'Opciones de viaje';

  @override
  String get action_cancel_ride => 'Cancelar viaje';

  @override
  String get invoice_dialog_body => 'También puede recibir efectivo en lugar de un pago en línea si usted y el escritor están dispuestos a hacerlo.';

  @override
  String get invoice_dialog_heading => 'Esperando el pago del pasajero';

  @override
  String get invoice_dialog_title => 'Información de pago';

  @override
  String get invoice_item_tip => 'Consejo';

  @override
  String get invoice_item_subtotal => 'Total parcial';

  @override
  String get add_credit_dialog_title => 'Añadir crédito';

  @override
  String get add_credit_dialog_select_payment_method => 'Seleccione el método de pago:';

  @override
  String get add_credit_dialog_choose_amount => 'Elija la cantidad';

  @override
  String get order_details_payment_method_title => 'Método de pago';

  @override
  String get order_payment_method_cash => 'Dinero';

  @override
  String get order_payment_method_online => 'En línea';

  @override
  String get order_details_trip_information_title => 'Información del viaje';

  @override
  String get issue_submit_body => 'Puede informar cualquier problema que haya tenido con su viaje. Le ayudaremos con el problema dentro de una llamada.';

  @override
  String get announcements_empty_state_title => '¡Aún no hay anuncios!';

  @override
  String get announcements_empty_state_body => 'Te avisaremos cuando lleguen nuevos anuncios.';

  @override
  String get empty_state_title_no_record => '¡Datos no encontrados!';

  @override
  String get earnings_empty_state_body => 'Con los criterios establecidos anteriormente, no podemos encontrar ningún registro.';

  @override
  String get action_continue => 'Continuar';

  @override
  String get terms_and_condition_first_part => 'He leído y estoy de acuerdo con';

  @override
  String get terms_and_conditions_clickable_part => 'Términos y condiciones';

  @override
  String get onboarding_welcome => 'Bienvenidos !';

  @override
  String get action_login_signup => 'Iniciar sesión Registrarse';

  @override
  String get action_complete_registration => 'Registro completo';

  @override
  String get action_edit_submission => 'Editar envío';

  @override
  String get incomplete_registration_description => 'Por favor complete su\n presentación de registro';

  @override
  String get pending_review_registration_description => 'Su envío está bajo revisión,\n Gracias por la paciencia.';

  @override
  String get hard_reject_registration => '¡Su envío ha sido rechazado por completo!';

  @override
  String get soft_rejection_description => 'Hay un problema con el envío.';

  @override
  String get action_confirm_and_continue => 'Confirmar y continuar';

  @override
  String get ride_preferences_title => 'Preferencias de viaje';

  @override
  String get action_back => 'atrás';

  @override
  String get title_logout => 'Cerrar sesión';

  @override
  String get logout_dialog_body => '¿Está seguro de que desea cerrar sesión en la aplicación?';

  @override
  String get action_delete_account => 'Borrar cuenta';

  @override
  String get dialog_account_deletion_title => 'Eliminación de cuenta';

  @override
  String get dialog_account_deletion_body => '¿Está seguro de que desea eliminar su cuenta? Puede iniciar sesión nuevamente dentro de los 30 días para restaurar la cuenta. Después de este período, sus datos se eliminan por completo, incluidos todos sus créditos restantes.';

  @override
  String wallet_card_title(Object appName) {
    return 'Billetera $appName';
  }

  @override
  String get order_status_canceled => 'Cancelado';

  @override
  String get driver_register_title => 'Registro de conductor';

  @override
  String get menu_profile => 'Mi perfil';

  @override
  String get profile_services_title => 'Servicios:';

  @override
  String get profile_bank_information_title => 'Información bancaria';

  @override
  String get profile_vehicle_information_title => 'Información del vehículo';

  @override
  String get profile_distance_traveled => 'Distancia viajada';

  @override
  String get profile_total_trips => 'Viajes totales';

  @override
  String get profile_rating => 'Clasificación';

  @override
  String get register_number_title => 'Ingrese su número telefónico';

  @override
  String get register_number_subtitle => 'Te enviaremos un código a tu número para continuar con el registro';

  @override
  String get register_verify_code_title => 'Introduzca el código';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Hemos enviado un código a $number';
  }

  @override
  String get register_contact_details_title => 'Introduce tus datos de contacto';

  @override
  String get register_payout_details_title => 'Ingrese los detalles de su pago';

  @override
  String get register_ride_details_title => 'Ingrese los detalles de su viaje';

  @override
  String get register_profile_photo_title => 'Subir foto de perfil';

  @override
  String get register_profile_photo_subtitle => 'Su cara debe ser reconocible en la imagen cargada';

  @override
  String get action_add_photo => 'Añadir foto';

  @override
  String get register_upload_documents_title => 'Subir documentos requeridos';

  @override
  String get register_upload_documents_subtitle => 'Para verificar su identidad y cumplir con las regulaciones, necesitaremos que cargue los siguientes documentos: 1.-Licencia de conducir frontal. 2.-Licencia de conducir posterior. 3.-Seguro del vehículo.';

  @override
  String get register_step_phone_number => 'Numero de celular';

  @override
  String get register_step_verify_number => 'Verificar número';

  @override
  String get register_step_contact_details => 'Detalles de contacto';

  @override
  String get register_step_ride_details => 'Detalles del viaje';

  @override
  String get register_step_payout_details => 'Detalles de pago';

  @override
  String get register_step_upload_documents => 'subir documentos';

  @override
  String get profile_uploaded_documents_title => 'Documentos subidos';

  @override
  String get error_cancel_not_allowed => 'No se permite cancelar un viaje ya iniciado';

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
  String get settings => 'Configuraciones';

  @override
  String get mapSettings => 'Configuraciones del Mapa';

  @override
  String get languageSettings => 'Configuraciones de idioma';

  @override
  String orderStatusCardTitleMultipleDestinations(int destinationIndex) {
    return 'Rumbo al destino de $destinationIndex';
  }

  @override
  String actionArrivedToDestination(int destinationIndex) {
    return 'Llegó al destino de $destinationIndex';
  }

  @override
  String get skipVerificationDemoOnly => 'Saltar verificación (Solo para Demo)';

  @override
  String get register_email_password_title=> 'Ingrese su correo electrónico y contraseña';

  @override
  String get register_email_password_subtitle=> 'Usaremos esto para que pueda iniciar sesión en la aplicación';

  @override
  String get register_step_email_password=>'Email y password';
}
