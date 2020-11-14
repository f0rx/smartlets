import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class ServerTimestampConverter implements JsonConverter<Timestamp, dynamic> {
  const ServerTimestampConverter();

  @override
  Timestamp fromJson(dynamic json) => json as Timestamp;

  @override
  dynamic toJson(Timestamp fieldValue) => fieldValue;
}
