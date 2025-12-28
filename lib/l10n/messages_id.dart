import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class SId extends S {
  SId([String locale = 'id']) : super(locale);

  @override
  String get statusOffline => 'Online';

  @override
  String get statusOnline => 'Buka Offline';

  @override
  String get message_notification_permission_title => 'Izin Pemberitahuan';

  @override
  String get message_notification_permission_denined_message => 'Izin pemberitahuan ditolak sebelumnya. Untuk mendapatkan notifikasi pesanan baru, Anda dapat mengaktifkan izin dari pengaturan aplikasi.';

  @override
  String get action_ok => 'Oke';

  @override
  String get menu_logout => 'Keluar';

  @override
  String get menu_about => 'Tentang';

  @override
  String get menu_wallet => 'Dompet';

  @override
  String get menu_trip_history => 'Sejarah Perjalanan';

  @override
  String get menu_announcements => 'Pengumuman';

  @override
  String get message_unknown_error => 'Kesalahan yang tidak diketahui';

  @override
  String get title_success => 'Kesuksesan';

  @override
  String get driver_register_profile_submitted_message => 'Profil Anda dikirim untuk persetujuan admin. Anda dapat memeriksa kembali nanti untuk melihat status kiriman Anda.';

  @override
  String get driver_registration_approved_demo_mode => 'Biasanya, pada tahap ini admin perlu menyetujui pengajuan driver dari Panel Admin. Namun, demi demo, profil Anda secara otomatis disetujui sekarang dan siap digunakan.';

  @override
  String get title_important => 'PENTING!';

  @override
  String get cell_number => 'Nomor handphone';

  @override
  String get phone_number_empty => 'Silakan masukkan nomor telepon';

  @override
  String get driver_registration_step_verify_number_title => 'Verifikasi Nomor';

  @override
  String get driver_register_verification_code_textfield_hint => 'Kode verifikasi';

  @override
  String get driver_register_contact_details_title => 'Detail Kontak';

  @override
  String get firstname => 'Nama depan';

  @override
  String get lastname => 'Nama keluarga';

  @override
  String get email => 'Surel';

  @override
  String get certificate_number => 'Nomor sertifikat';

  @override
  String get gender => 'Jenis kelamin';

  @override
  String get gender_male => 'Pria';

  @override
  String get gender_female => 'Perempuan';

  @override
  String get address => 'Alamat';

  @override
  String get driver_register_ride_details_step_title => 'Detail Perjalanan';

  @override
  String get plate_number => 'Plat nomor';

  @override
  String get car_production_year => 'Tahun pembuatan';

  @override
  String get car_model => 'Model mobil';

  @override
  String get car_color => 'Warna Mobil';

  @override
  String get driver_register_step_payout_details_title => 'Detail Pembayaran';

  @override
  String get bank_name => 'Nama Bank';

  @override
  String get account_number => 'Nomor akun';

  @override
  String get bank_swift => 'Bank Swift';

  @override
  String get bankRoutingNumber => 'Nomor Perutean Bank';

  @override
  String get driver_register_step_documents_title => 'Dokumen';

  @override
  String get driver_register_step_documents_heading => 'Untuk memverifikasi dokumen di atas, kami memerlukan dokumen di bawah yang diunggah';

  @override
  String get driver_register_document_first => '1-ID';

  @override
  String get driver_register_document_second => '2-SIM';

  @override
  String get driver_register_document_third => 'Dokumen Kepemilikan 3-Ride';

  @override
  String get action_upload_document => 'Unggah Dokumen';

  @override
  String get trip_history_empty_state => 'Tidak ada pesanan sebelumnya yang dicatat.';

  @override
  String get wallet_empty_state_message => 'Tidak ada sejarah yang tercatat.';

  @override
  String get enum_unknown => 'tidak diketahui';

  @override
  String get top_up_sheet_pay_button => 'Membayar';

  @override
  String get loading => 'MEMUAT';

  @override
  String get available_order_action_accept => 'Terima Pesanan';

  @override
  String get order_status_action_received_cash => 'Pembayaran Tunai diterima';

  @override
  String get action_cancel => 'Membatalkan';

  @override
  String get order_status_action_navigate => 'Navigasi';

  @override
  String get order_status_action_arrived => 'Tiba';

  @override
  String get order_status_action_start => 'Mulai Perjalanan';

  @override
  String get order_status_action_finished => 'Menyelesaikan';

  @override
  String get message_cant_open_url => 'Perintah tidak didukung';

  @override
  String get enum_driver_recharge_type_bank_transfer => 'Transfer Bank';

  @override
  String get enum_driver_recharge_type_gift => 'Hadiah';

  @override
  String get enum_driver_recharge_type_in_app_payment => 'Pembayaran Dalam Aplikasi';

  @override
  String get enum_driver_recharge_transaction_type_order_fee => 'Biaya Pemesanan';

  @override
  String get enum_driver_deduct_transaction_type_withdraw => 'Menarik';

  @override
  String get enum_driver_deduct_transaction_type_correction => 'Koreksi';

  @override
  String get enum_driver_deduct_transaction_type_commission => 'Komisi';

  @override
  String copyright_notice(Object company) {
    return 'Hak Cipta © $company, Semua hak dilindungi undang-undang.';
  }

  @override
  String get wallet_activities_heading => 'Kegiatan';

  @override
  String get form_required_field_error => 'kolom yang harus diisi';

  @override
  String get button_report_issue => 'Laporkan masalah';

  @override
  String get issue_submit_title => 'Laporkan masalah';

  @override
  String get issue_subject_placeholder => 'Subjek';

  @override
  String get error_field_cant_be_empty => 'Tidak boleh kosong';

  @override
  String get issue_description_placeholder => 'Keterangan';

  @override
  String get complaint_submit_success_message => 'Pengaduan disampaikan. Harap tunggu kontak dari perwakilan dukungan kami tentang pertanyaan Anda.';

  @override
  String get menu_earnings => 'Pendapatan';

  @override
  String get status_offline_description => 'Dapatkan online untuk melihat permintaan';

  @override
  String get status_online_description => 'Mencari tumpangan';

  @override
  String get order_status_card_title_driver_accepted => 'Pengendara akan diberi tahu setelah Anda mengetuk Tiba';

  @override
  String get order_status_card_title_arrived => 'Pengendara telah diberitahu';

  @override
  String get order_status_card_title_started => 'Menuju ke tujuan';

  @override
  String get navigation_dialog_title => 'Pilih aplikasi untuk bernavigasi';

  @override
  String get action_ride_options => 'Opsi Perjalanan';

  @override
  String rider_expected_time_past(Object minutes) {
    return 'Rider mengharapkanmu $minutes yang lalu';
  }

  @override
  String rider_expected_time_future(Object minutes) {
    return 'Rider menunggu Anda dalam $minutes';
  }

  @override
  String get order_payment_status_unpaid => 'Perjalanan belum dibayar';

  @override
  String get order_payment_status_paid => 'Pengendara telah dibayar';

  @override
  String get action_ride_preferences => 'Preferensi Pengendara';

  @override
  String get navigation_dialog_title_pickup_point => 'Arahkan ke titik penjemputan';

  @override
  String get navigation_title_destination_point => 'Arahkan ke titik pengantaran';

  @override
  String get rider_options_dialog_title => 'Opsi Perjalanan';

  @override
  String get action_cancel_ride => 'Batalkan Perjalanan';

  @override
  String get invoice_dialog_body => 'Anda juga dapat menerima uang tunai alih-alih pembayaran online jika Anda dan penulis keduanya bersedia.';

  @override
  String get invoice_dialog_heading => 'Menunggu pembayaran pengendara';

  @override
  String get invoice_dialog_title => 'Informasi pembayaran';

  @override
  String get invoice_item_tip => 'Tip';

  @override
  String get invoice_item_subtotal => 'Subtotal';

  @override
  String get add_credit_dialog_title => 'Tambahkan Kredit';

  @override
  String get add_credit_dialog_select_payment_method => 'Pilih metode pembayaran:';

  @override
  String get add_credit_dialog_choose_amount => 'Pilih jumlah';

  @override
  String get order_details_payment_method_title => 'Cara Pembayaran';

  @override
  String get order_payment_method_cash => 'Uang tunai';

  @override
  String get order_payment_method_online => 'On line';

  @override
  String get order_details_trip_information_title => 'Informasi Perjalanan';

  @override
  String get issue_submit_body => 'Anda dapat melaporkan masalah apa pun yang Anda alami dengan perjalanan Anda. Kami akan membantu Anda dengan masalah dalam panggilan.';

  @override
  String get announcements_empty_state_title => 'Belum ada Pengumuman!';

  @override
  String get announcements_empty_state_body => 'Kami akan memberi tahu Anda ketika ada pengumuman baru.';

  @override
  String get empty_state_title_no_record => 'Tidak ada data ditemukan!';

  @override
  String get earnings_empty_state_body => 'Pada kriteria yang ditetapkan di atas, kami tidak dapat menemukan catatan apa pun.';

  @override
  String get action_continue => 'Melanjutkan';

  @override
  String get terms_and_condition_first_part => 'Saya telah membaca dan setuju dengan';

  @override
  String get terms_and_conditions_clickable_part => 'Syarat & Ketentuan';

  @override
  String get onboarding_welcome => 'Selamat datang !';

  @override
  String get action_login_signup => 'Masuk daftar';

  @override
  String get action_complete_registration => 'Selesaikan pendaftaran';

  @override
  String get action_edit_submission => 'Edit kiriman';

  @override
  String get incomplete_registration_description => 'Silahkan lengkapi\n pengajuan pendaftaran';

  @override
  String get pending_review_registration_description => 'Kiriman Anda sedang ditinjau,\n Terima kasih atas kesabaran.';

  @override
  String get hard_reject_registration => 'Kiriman Anda ditolak sepenuhnya!';

  @override
  String get soft_rejection_description => 'Ada masalah dengan pengiriman';

  @override
  String get action_confirm_and_continue => 'Konfirmasi & Lanjutkan';

  @override
  String get ride_preferences_title => 'Preferensi Berkendara';

  @override
  String get action_back => 'Kembali';

  @override
  String get title_logout => 'Keluar';

  @override
  String get logout_dialog_body => 'Apakah Anda yakin ingin keluar dari aplikasi?';

  @override
  String get action_delete_account => 'Hapus akun';

  @override
  String get dialog_account_deletion_title => 'Penghapusan akun';

  @override
  String get dialog_account_deletion_body => 'Apakah Anda yakin ingin menghapus akun Anda? Anda dapat masuk lagi dalam waktu 30 hari untuk memulihkan akun. Setelah periode ini, data Anda akan dihapus sepenuhnya, termasuk semua sisa kredit Anda.';

  @override
  String wallet_card_title(Object appName) {
    return 'Dompet $appName';
  }

  @override
  String get order_status_canceled => 'Dibatalkan';

  @override
  String get driver_register_title => 'Registrasi Pengemudi';

  @override
  String get menu_profile => 'Profil saya';

  @override
  String get profile_services_title => 'Jasa:';

  @override
  String get profile_bank_information_title => 'Informasi bank';

  @override
  String get profile_vehicle_information_title => 'Informasi kendaraan';

  @override
  String get profile_distance_traveled => 'Jarak yang ditempuh';

  @override
  String get profile_total_trips => 'Total perjalanan';

  @override
  String get profile_rating => 'Peringkat';

  @override
  String get register_number_title => 'Masukkan nomor telepon Anda';

  @override
  String get register_number_subtitle => 'Kami akan mengirimkan kode ke nomor Anda untuk melanjutkan pendaftaran';

  @override
  String get register_verify_code_title => 'Memasukkan kode';

  @override
  String register_verify_code_subtitle(Object number) {
    return 'Kami telah mengirim kode ke $number';
  }

  @override
  String get register_contact_details_title => 'Masukkan detail kontak Anda';

  @override
  String get register_payout_details_title => 'Masukkan detail pembayaran Anda';

  @override
  String get register_ride_details_title => 'Masukkan detail perjalanan Anda';

  @override
  String get register_profile_photo_title => 'Unggah Foto Profil';

  @override
  String get register_profile_photo_subtitle => 'Wajah Anda harus dapat dikenali di gambar yang diunggah';

  @override
  String get action_add_photo => 'Tambahkan Foto';

  @override
  String get register_upload_documents_title => 'Unggah dokumen yang diperlukan';

  @override
  String get register_upload_documents_subtitle => 'Untuk memverifikasi identitas Anda dan mematuhi peraturan, Anda harus mengunggah dokumen di bawah ini: \\n1-ID Foto\\n2-SIM\\n3-Dokumen kepemilikan kendaraan';

  @override
  String get register_step_phone_number => 'Nomor handphone';

  @override
  String get register_step_verify_number => 'Verifikasi Nomor';

  @override
  String get register_step_contact_details => 'Rincian kontak';

  @override
  String get register_step_ride_details => 'Detail perjalanan';

  @override
  String get register_step_payout_details => 'Detail Pembayaran';

  @override
  String get register_step_upload_documents => 'Unggah Dokumen';

  @override
  String get profile_uploaded_documents_title => 'Dokumen yang diunggah';

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
