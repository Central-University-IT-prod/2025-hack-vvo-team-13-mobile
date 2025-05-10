
import 'package:hive_flutter/hive_flutter.dart';
part 'Adapters/LoggingModel.g.dart';

@HiveType(typeId: 1)
class LoggingModel {
  @HiveField(0)
  final bool isLogged;
  LoggingModel({required this.isLogged});
}