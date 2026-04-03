DateTime fromGraphQLTimestampToDartDateTime(dynamic data) {
  if (data is int) {
    return DateTime.fromMillisecondsSinceEpoch(data);
  }
  if (data is String) {
    return DateTime.parse(data);
  }
  throw ArgumentError(
      'Unsupported GraphQL Timestamp type: ${data.runtimeType}');
}

int fromDartDateTimeToGraphQLTimestamp(DateTime data) =>
    data.millisecondsSinceEpoch;

int? fromDartDateTimeNullableToGraphQLTimestampNullable(DateTime? datetime) =>
    datetime?.millisecondsSinceEpoch;

DateTime? fromGraphQLTimestampNullableToDartDateTimeNullable(dynamic data) =>
    data != null ? fromGraphQLTimestampToDartDateTime(data) : null;
