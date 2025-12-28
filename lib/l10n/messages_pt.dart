import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class SPt extends S {
  SPt([String locale = 'pt']) : super(locale);

  @override
  String get statusOffline => 'Fique online';

  @override
  String get statusOnline => 'Desconecte';

  @override
  String get message_notification_permission_title => 'Permissão de notificação';

  @override
  String get message_notification_permission_denined_message => 'A permissão de notificação foi negada anteriormente. A fim de obter notificações de novos pedidos, você pode habilitar a permissão a partir das configurações do aplicativo.';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_logout => 'Sair';

  @override
  String get menu_about => 'Sobre';

  @override
  String get menu_wallet => 'Carteira';

  @override
  String get menu_trip_history => 'Histórico de viagem';

  @override
  String get menu_announcements => 'Anúncios';

  @override
  String get message_unknown_error => 'Erro desconhecido';

  @override
  String get title_success => 'Sucesso';

  @override
  String get driver_register_profile_submitted_message => 'Seu perfil foi enviado para aprovação do administrador. Você pode voltar mais tarde para ver o status do seu envio.';

  @override
  String get driver_registration_approved_demo_mode => 'Normalmente, nesta fase, a administração precisaria aprovar a apresentação do motorista pelo Painel de Administração. No entanto, para fins de demonstração, seu perfil é automaticamente aprovado agora e está pronto para uso.';

  @override
  String get title_important => 'IMPORTANTE!';

  @override
  String get cell_number => 'Número do celular';

  @override
  String get phone_number_empty => 'Por favor, insira o número de telefone';

  @override
  String get driver_registration_step_verify_number_title => 'Verificar número';

  @override
  String get driver_register_verification_code_textfield_hint => 'Código de verificação';

  @override
  String get driver_register_contact_details_title => 'Dados de contato';

  @override
  String get firstname => 'Primeiro nome';

  @override
  String get lastname => 'Sobrenome';

  @override
  String get email => 'E-Mail';

  @override
  String get certificate_number => 'Número do certificado';

  @override
  String get gender => 'Gênero';

  @override
  String get gender_male => 'Masculino';

  @override
  String get gender_female => 'Feminino';

  @override
  String get address => 'Endereço';

  @override
  String get driver_register_ride_details_step_title => 'Detalhes da viagem';

  @override
  String get plate_number => 'Número da placa';

  @override
  String get car_production_year => 'Ano de Produção';

  @override
  String get car_model => 'Modelo de carro';

  @override
  String get car_color => 'Cor do carro';

  @override
  String get driver_register_step_payout_details_title => 'Detalhes de pagamento';

  @override
  String get bank_name => 'Nome do banco';

  @override
  String get account_number => 'Número da conta';

  @override
  String get bank_swift => 'Código swift do banco';

  @override
  String get bankRoutingNumber => 'Código do banco';

  @override
  String get driver_register_step_documents_title => 'Documentos';

  @override
  String get driver_register_step_documents_heading => 'Para verificar os documentos acima, exigimos os documentos abaixo carregados';

  @override
  String get driver_register_document_first => '1-Identidade';

  @override
  String get driver_register_document_second => '2-Carteira de habilitação';

  @override
  String get driver_register_document_third => '3-Documento de propriedade do veículo';

  @override
  String get action_upload_document => 'Carregar documento';

  @override
  String get trip_history_empty_state => 'Nenhum pedido anterior foi registrado.';

  @override
  String get wallet_empty_state_message => 'Nenhum histórico registrado.';

  @override
  String get enum_unknown => 'Desconhecido';

  @override
  String get top_up_sheet_pay_button => 'Pagar';

  @override
  String get loading => 'Carregando';

  @override
  String get available_order_action_accept => 'Aceitar pedido';

  @override
  String get order_status_action_received_cash => 'Pagamento em dinheiro recebido';

  @override
  String get action_cancel => 'Cancelar';

  @override
  String get order_status_action_navigate => 'Navegar';

  @override
  String get order_status_action_arrived => 'Chegada';

  @override
  String get order_status_action_start => 'Iniciar viagem';

  @override
  String get order_status_action_finished => 'Terminar';

  @override
  String get message_cant_open_url => 'O comando não é suportado';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Transferência bancária';

  @override
  String get enum_driver_recharge_type_gift => 'Presente';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Pagamento no aplicativo';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Taxa de pedido';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Retirar';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Correção';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Comissão';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Todos os direitos reservados.';
  }

  @override
  String get wallet_activities_heading => 'Atividades';

  @override
  String get form_required_field_error => 'Campo obrigatório';

  @override
  String get button_report_issue => 'Informar um problema';

  @override
  String get issue_submit_title => 'Informar um problema';

  @override
  String get issue_subject_placeholder => 'Assunto';

  @override
  String get error_field_cant_be_empty => 'Não pode ser vazio';

  @override
  String get issue_description_placeholder => 'Descrição';

  @override
  String get complaint_submit_success_message => 'A reclamação foi enviada. Aguarde um contato de nosso representante de suporte sobre sua consulta.';

  @override
  String get menu_earnings => 'Ganhos';

  @override
  String get status_offline_description => 'Fique online para ver os pedidos';

  @override
  String get status_online_description => 'Procurando viagem';

  @override
  String get order_status_card_title_driver_accepted => 'O passageiro será notificado assim que você tocar em Chegou';

  @override
  String get order_status_card_title_arrived => 'O passageiro foi notificado';

  @override
  String get order_status_card_title_started => 'Rumo ao destino';

  @override
  String get navigation_dialog_title => 'Escolha um aplicativo para navegar';

  @override
  String get action_ride_options => 'Opções da viagem';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'O passageiro esperava você $minutes atrás';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'O passageiro espera por você em $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'A viagem ainda não foi paga';

  @override
  String get order_payment_status_paid => 'A viagem foi paga';

  @override
  String get action_ride_preferences => 'Preferências do passageiro';

  @override
  String get navigation_dialog_title_pickup_point => 'Navegue até o ponto de coleta';

  @override
  String get navigation_title_destination_point => 'Navegar para o ponto de entrega';

  @override
  String get rider_options_dialog_title => 'Opções de viagem';

  @override
  String get action_cancel_ride => 'Cancelar viagem';

  @override
  String get invoice_dialog_body => 'Você também pode receber dinheiro em vez de pagamento online, se você e o passageiro estiverem em acordo.';

  @override
  String get invoice_dialog_heading => 'Aguardando o pagamento do passageiro';

  @override
  String get invoice_dialog_title => 'Informação de pagamento';

  @override
  String get invoice_item_tip => 'Dica';

  @override
  String get invoice_item_subtotal => 'Subtotal';

  @override
  String get add_credit_dialog_title => 'Adicionar crédito';

  @override
  String get add_credit_dialog_select_payment_method => 'Selecione o método de pagamento:';

  @override
  String get add_credit_dialog_choose_amount => 'Escolha o valor';

  @override
  String get order_details_payment_method_title => 'Forma de pagamento';

  @override
  String get order_payment_method_cash => 'Dinheiro';

  @override
  String get order_payment_method_online => 'Online';

  @override
  String get order_details_trip_information_title => 'Informações da viagem';

  @override
  String get issue_submit_body => 'Você pode relatar qualquer problema que teve com o seu passeio, nós o ajudaremos com o problema em uma chamada.';

  @override
  String get announcements_empty_state_title => 'Nenhum anúncio!';

  @override
  String get announcements_empty_state_body => 'Vamos notificá-lo quando novos anúncios chegarem.';

  @override
  String get empty_state_title_no_record => 'Nenhum dado encontrado!';

  @override
  String get earnings_empty_state_body => 'Nos critérios definidos acima não encontramos nenhum registro.';

  @override
  String get action_continue => 'Continuar';

  @override
  String get terms_and_condition_first_part => 'Eu li e concordo com ';

  @override
  String get terms_and_conditions_clickable_part => 'Termos e Condições';

  @override
  String get onboarding_welcome => 'Bem-vindo !';

  @override
  String get action_login_signup => 'Entrar / Cadastre-se';

  @override
  String get action_complete_registration => 'Cadastro completo';

  @override
  String get action_edit_submission => 'Editar o envio';

  @override
  String get incomplete_registration_description => 'Por favor, complete sua \\nregistration de registro';

  @override
  String get pending_review_registration_description => 'Seu envio está em análise,\\nThanks Agradecemos a paciência.';

  @override
  String get hard_reject_registration => 'Seu envio foi totalmente rejeitado!';

  @override
  String get soft_rejection_description => 'Há um problema com o envio';

  @override
  String get action_confirm_and_continue => 'Confirmar e continuar';

  @override
  String get ride_preferences_title => 'Preferências de viagem';

  @override
  String get action_back => 'Voltar';

  @override
  String get title_logout => 'Sair';

  @override
  String get logout_dialog_body => 'Tem certeza de que deseja sair do aplicativo?';

  @override
  String get action_delete_account => 'Deletar conta';

  @override
  String get dialog_account_deletion_title => 'Exclusão de conta';

  @override
  String get dialog_account_deletion_body => 'Você tem certeza de que deseja excluir sua conta? Você pode fazer o login novamente dentro de 30 dias para restaurar a conta. Após este período, seus dados serão completamente removidos, incluindo todos os seus créditos restantes.';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Carteira';
  }

  @override
  String get order_status_canceled => 'Cancelado';

  @override
  String get driver_register_title => 'Registro de motorista';

  @override
  String get menu_profile => 'Meu perfil';

  @override
  String get profile_services_title => 'Serviços:';

  @override
  String get profile_bank_information_title => 'Informações bancárias';

  @override
  String get profile_vehicle_information_title => 'Informações do veículo';

  @override
  String get profile_distance_traveled => 'Distância percorrida';

  @override
  String get profile_total_trips => 'Total de viagens';

  @override
  String get profile_rating => 'Avaliação';

  @override
  String get register_number_title => 'Digite seu número de telefone';

  @override
  String get register_number_subtitle => 'Enviaremos um código para o seu número para continuar o registro';

  @override
  String get register_verify_code_title => 'Digite o código';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Enviamos um código para $number';
  }

  @override
  String get register_contact_details_title => 'Insira seus detalhes de contato';

  @override
  String get register_payout_details_title => 'Insira seus detalhes de pagamento';

  @override
  String get register_ride_details_title => 'Insira os detalhes da sua viagem';

  @override
  String get register_profile_photo_title => 'Carregar foto do perfil';

  @override
  String get register_profile_photo_subtitle => 'Seu rosto deve ser reconhecível na imagem carregada';

  @override
  String get action_add_photo => 'Adicionar foto';

  @override
  String get register_upload_documents_title => 'Carregar documentos necessários';

  @override
  String get register_upload_documents_subtitle => 'Para verificar sua identidade e cumprir os regulamentos, precisamos que você envie os documentos abaixo: \n1-Identificação com foto\n2-Carteira de motorista\n3-Documento de propriedade do veículo';

  @override
  String get register_step_phone_number => 'Número do celular';

  @override
  String get register_step_verify_number => 'Número de verificação';

  @override
  String get register_step_contact_details => 'Detalhes de contato';

  @override
  String get register_step_ride_details => 'Detalhes da viagem';

  @override
  String get register_step_payout_details => 'Detalhes de pagamento';

  @override
  String get register_step_upload_documents => 'Carregar Documentos';

  @override
  String get profile_uploaded_documents_title => 'Documentos enviados';

  @override
  String get error_cancel_not_allowed => 'O cancelamento não é permitido para uma viagem já iniciada';

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
    return '$distance até o fim';
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
