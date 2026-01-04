/// Consulta paralela tipo Me para depuración
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';


Future<void> consultarDriverManual(GraphQLClient client) async {
  final String query = '''
    query MeQuery(
      \$id: String!,
      \$versionCode: Int!
    ) {
      Me(id: \$id, versionCode: \$versionCode) {
        driver {
          id
          mobileNumber
          firstName
          lastName
        }
      }
    }
  ''';
  final driverId = Hive.box('user').get('driverId').toString();
  print('consultarDriverManual: driverId = $driverId');
  final result = await client.query(
    QueryOptions(
      document: gql(query),
      variables: {
        'id': driverId,
        'versionCode': 999999,
      },
      fetchPolicy: FetchPolicy.noCache,
    ),
  );
  print('Resultado consulta paralela Me:');
  print(result.data);
  if (result.hasException) {
    print('Error en consulta paralela Me:');
    print(result.exception);
  }
}


/// Actualiza el FCM ID del driver usando el driverId guardado dinámicamente
Future<Map<String, dynamic>?> updateDriverFcmIdDynamic(
  GraphQLClient client, {
  required String fcmId,
}) async {
  final driverId = Hive.box('user').get('driverId');
  print('updateDriverFcmIdDynamic: driverId = $driverId, tipo = ${driverId.runtimeType}');
  if (driverId == null) {
    print('No hay driverId guardado');
    return null;
  }

  const String mutation = '''
    mutation UpdateDriver(\$input: UpdateDriverInput!) {
      updateDriver(input: \$input) {
        id
        mobileNumber
      }
    }
  ''';

  final options = MutationOptions(
    document: gql(mutation),
    variables: {
      'input': {
        'id': driverId.toString(),
        // 'fcmId': fcmId, // Eliminado porque no existe en el backend
      },
    },
    fetchPolicy: FetchPolicy.noCache,
  );

  final result = await client.mutate(options);

  if (result.hasException) {
    print('Error al actualizar FCM ID dinámico: ${result.exception}');
    return null;
  }

  return result.data?['updateDriver'];
}
/// Limpia el driverId guardado en Hive para reiniciar el registro



Future<void> clearDriverId() async {
  await Hive.box('user').delete('driverId');
}

Future<Map<String, dynamic>?> getDriverDynamic(GraphQLClient client) async {
  final driverId = Hive.box('user').get('driverId');
  if (driverId == null) {
    print('No hay driverId guardado');
    return null;
  }

  const String query = '''
    query GetDriver(
      \$id: ID!
    ) {
      driver(id: \$id) {
        id
        firstName
        lastName
        mobileNumber
        email
        status
        
    }
    }
  ''';

  final options = QueryOptions(
    document: gql(query),
    variables: {'id': driverId.toString()},
    fetchPolicy: FetchPolicy.noCache,
  );

  final result = await client.query(options);

  if (result.hasException) {
    print('Error al obtener driver dinámico: ${result.exception}');
    return null;
  }

  return result.data?['driver'];
}

/// Actualiza el perfil del driver usando el driverId guardado dinámicamente
Future<Map<String, dynamic>?> updateDriverDynamic(
  GraphQLClient client, {
  String? email,
  String? password,
  String? firstName,
  String? lastName,
  String? mobileNumber, String? certificateNumber,
  // Agrega aquí otros campos según tu backend
}) async {
  final driverId = Hive.box('user').get('driverId');
  print('updateDriverDynamic: driverId = $driverId, tipo = \'${driverId.runtimeType}\'');
  if (driverId == null) {
    print('No hay driverId guardado');
    return null;
  }

  const String mutation = '''
    mutation UpdateDriver(\$input: UpdateDriverInput!) {
      updateOneDriver(input: \$input) {
        id
        firstName
        lastName
        mobileNumber
        email
        status
      }
    }
  ''';

  final Map<String, dynamic> input = {
    'id': driverId.toString(),
  };
  if (email != null) input['email'] = email;
  if (password != null) input['password'] = password;
  if (firstName != null) input['firstName'] = firstName;
  if (lastName != null) input['lastName'] = lastName;
  if (mobileNumber != null) input['mobileNumber'] = mobileNumber;
  if (certificateNumber != null) input['certificateNumber'] = certificateNumber;
  // Agrega aquí otros campos según tu backend

  print('updateDriverDynamic: variables = {input: $input}');

  final options = MutationOptions(
    document: gql(mutation),
    variables: {
      'input': input,
    },
    fetchPolicy: FetchPolicy.noCache,
  );

  final result = await client.mutate(options);

  if (result.hasException) {
    print('Error al actualizar driver dinámico: ${result.exception}');
    return null;
  }

  return result.data?['updateOneDriver'];
}
