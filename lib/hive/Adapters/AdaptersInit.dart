import 'package:JCity/models/auth/LoggingModel.dart';
import 'package:JCity/models/languages/LanguageModel.dart';
import 'package:hive/hive.dart';


class Adapters {
  Future<void> AdaptersInit() async {
    Hive.registerAdapter(LoggingModelAdapter());
    Hive.registerAdapter(LanguageModelAdapter());
  }
}