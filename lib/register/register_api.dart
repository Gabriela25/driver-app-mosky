import 'package:graphql_flutter/graphql_flutter.dart';
/// Mutación centralizada para actualizar documentos y foto del driver
Future<Map<String, dynamic>?> updateDriverDocuments({
  required GraphQLClient client,
  required String driverId,
  String? mediaId,
  required List<String> documentIds,
  String status = 'PendingApproval',
}) async {
  const String mutation = '''
    mutation UpdateOneDriver(
      \$input: UpdateOneDriverInput!
    ) {
      updateOneDriver(input: \$input) {
        id
      }
    }
  ''';
  final result = await client.mutate(MutationOptions(
    document: gql(mutation),
    variables: {
      'input': {
        'id': driverId,
        'update': {
          if (mediaId != null) 'mediaId': mediaId,
          'documents': documentIds,
          'status': status,
        }
      },
    },
  ));
  if (result.hasException) {
    return null;
  }
  return result.data?['updateOneDriver'] as Map<String, dynamic>?;
}
/// Mutación centralizada para actualizar los datos del auto del driver
Future<Map<String, dynamic>?> updateDriverCarData({
  required GraphQLClient client,
  required String driverId,
  required String carId,
  required String carColorId,
  required String carPlate,
  required int carProductionYear,
}) async {
  const String mutation = '''
    mutation UpdateOneDriver(
      \$input: UpdateOneDriverInput!
    ) {
      updateOneDriver(input: \$input) {
        id
      }
    }
  ''';
  final result = await client.mutate(MutationOptions(
    document: gql(mutation),
    variables: {
      'input': {
        'id': driverId,
        'update': {
          'carId': carId,
          'carColorId': carColorId,
          'carPlate': carPlate,
          'carProductionYear': carProductionYear,
        }
      },
    },
  ));
  if (result.hasException) {
    return null;
  }
  return result.data?['updateOneDriver'] as Map<String, dynamic>?;
}
/// Consulta centralizada para obtener modelos y colores de autos
Future<Map<String, List<Map<String, String>>>> fetchCarModelsAndColors(GraphQLClient client) async {
  const String query = '''
    query GetCarModelsAndColors {
      carModels { id name }
      carColors { id name }
    }
  ''';
  final result = await client.query(QueryOptions(document: gql(query)));
  if (result.hasException) {
    throw Exception(result.exception.toString());
  }
  final models = (result.data?['carModels'] as List<dynamic>?)
      ?.map((e) => {
            'id': e['id'].toString(),
            'name': e['name'].toString(),
          })
      .toList() ?? <Map<String, String>>[];
  final colors = (result.data?['carColors'] as List<dynamic>?)
      ?.map((e) => {
            'id': e['id'].toString(),
            'name': e['name'].toString(),
          })
      .toList() ?? <Map<String, String>>[];
  return {'models': models, 'colors': colors};
}


/// Updates the driver profile with the provided details.
/// Returns the mutation result or null if failed.
Future<dynamic> updateDriverProfile({
  required GraphQLClient client,
  required String driverId,
  required String email,
  required String password,
  required String? firstName,
  required String? lastName,
  required String? certificateNumber,
}) async {
  final updateVariables = {
    'id': driverId,
    'update': {
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'certificateNumber': certificateNumber,
      'status': 'WaitingDocuments',
    }
  };
  print('driverId usado para update: $driverId');
  print('Variables enviadas a updateOneDriver: $updateVariables');
  final updateResult = await updateOneDriver(client, updateVariables);
  return updateResult;
}


/// Función para completar el registro del usuario
Future<bool> completeRegistration({
  required GraphQLClient client,
  required String driverId,
  required String email,
  required String password,
}) async {
  const String mutation = '''
    mutation CompleteRegistration(
      \$input: CompleteRegistrationInput!
    ) {
      completeRegistration(input: \$input) {
        success
      }
    }
  ''';

  final result = await client.mutate(MutationOptions(
    document: gql(mutation),
    variables: {
      'input': {
        'driverId': driverId,
        'email': email,
        'password': password,
      },
    },
  ));

  if (result.hasException) {
    print('Error al completar el registro: ${result.exception}');
    return false;
  }

  return result.data?['completeRegistration']?['success'] ?? false;
}

// Consulta para obtener el estado y datos del driver actual
const String getDriverMeQuery = r'''
  query Me($id: ID!, $versionCode: Int!) {
    Me(id: $id, versionCode: $versionCode) {
      driver {
        id
        status
        firstName
        lastName
        email
        certificateNumber
        gender
        address
    
      }
      requireUpdate
    }
  }
''';

Future<QueryResult> fetchDriverMe({
  required GraphQLClient client,
  required String id,
  required int versionCode,
}) async {
  final options = QueryOptions(
    document: gql(getDriverMeQuery),
    variables: {
      'id': id,
      'versionCode': versionCode,
    },
    fetchPolicy: FetchPolicy.networkOnly,
  );
  return await client.query(options);
}

// Consulta para verificar si el teléfono está aprobado y obtener datos básicos del driver
const String checkPhoneApprovedQuery = r'''
  query CheckPhone(
    $phone: String!
  ) {
    driverByPhone(phone: $phone) {
      id
      status
      email
    }
  }
''';

Future<Map<String, dynamic>?> checkPhoneApproved(
  GraphQLClient client,
  String phone,
) async {
  final result = await client.query(QueryOptions(
    document: gql(checkPhoneApprovedQuery),
    variables: {'phone': phone},
    fetchPolicy: FetchPolicy.networkOnly,
  ));
  if (result.hasException) {
    final errorMessage = result.exception.toString();
    // Si el error es 'not found', 'No existe' o 'does not exist', significa que el teléfono no está registrado.
    // NO se debe mostrar ningún mensaje al usuario, solo continuar con el registro nuevo.
    if (errorMessage.contains('not found') || errorMessage.contains('No existe') || errorMessage.contains('does not exist')) {
      return null;
    }
    // Para otros errores, puedes registrar o manejar diferente si lo deseas.
    // Aquí podrías loguear el error para depuración, pero no mostrarlo al usuario.
    return null;
  }
  return result.data?['driverByPhone'] as Map<String, dynamic>?;
}

// Consulta y función para login por email y password
const String loginByEmailPasswordQuery = r'''
  query LoginByEmailPassword(
    $email: String!, $password: String!
  ) {
    loginByEmailPassword(email: $email, password: $password) {
      jwtToken
      status
    }
  }
''';

Future<Map<String, dynamic>?> loginByEmailPassword(
  GraphQLClient client,
  String email,
  String password,
) async {
  final result = await client.query(QueryOptions(
    document: gql(loginByEmailPasswordQuery),
    variables: {'email': email, 'password': password},
    fetchPolicy: FetchPolicy.noCache,
  ));
  if (result.hasException) {
    return null;
  }
  return result.data?['loginByEmailPassword'] as Map<String, dynamic>?;
}

// Mutación para login con Firebase Token
const String loginWithFirebaseTokenMutation = r'''
  mutation Login(
    $firebaseToken: String!
  ) {
    login(input: { firebaseToken: $firebaseToken }) {
      jwtToken
    }
  }
''';

Future<String?> loginWithFirebaseToken(
  GraphQLClient client,
  String firebaseToken,
) async {
  final result = await client.mutate(MutationOptions(
    document: gql(loginWithFirebaseTokenMutation),
    variables: {'firebaseToken': firebaseToken},
  ));
  if (result.hasException) {
    return null;
  }
  return result.data?['login']?['jwtToken'] as String?;
}

// Consulta para obtener driverId por JWT
const String getDriverIdQuery = r'''
  query GetDriverId($jwtToken: String!) {
    getDriverId(jwtToken: $jwtToken)
  }
''';

Future<String?> getDriverIdByJwt(
  GraphQLClient client,
  String jwtToken,
) async {
  final result = await client.query(QueryOptions(
    document: gql(getDriverIdQuery),
    variables: {'jwtToken': jwtToken},
    fetchPolicy: FetchPolicy.noCache,
  ));
  if (result.hasException) {
    return null;
  }
  final id = result.data?['getDriverId'];
  if (id == null) return null;
  // Si el backend devuelve int, lo convertimos a String para mantener compatibilidad
  return id.toString();
}

// Mutación para actualizar el perfil del driver
const String updateOneDriverMutation = r'''
  mutation UpdateOneDriver(
    $input: UpdateOneDriverInput!
  ) {
    updateOneDriver(input: $input) {
      id
      email
      password
    }
  }
''';

Future<Map<String, dynamic>?> updateOneDriver(
  GraphQLClient client,
  Map<String, dynamic> input,
) async {
  final result = await client.mutate(MutationOptions(
    document: gql(updateOneDriverMutation),
    variables: {'input': input},
  ));
  if (result.hasException) {
    return null;
  }
  return result.data?['updateOneDriver'] as Map<String, dynamic>?;
}
