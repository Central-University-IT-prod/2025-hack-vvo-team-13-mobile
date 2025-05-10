
import 'package:hive_flutter/hive_flutter.dart';
part '../auth/Adapters/LanguageModel.g.dart';

@HiveType(typeId: 2)
class LanguageModel {

  @HiveField(0)
  final String language;

  LanguageModel({required this.language});
}