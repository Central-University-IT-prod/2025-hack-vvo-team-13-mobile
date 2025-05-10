import 'package:JCity/models/auth/LoggingModel.dart';
import 'package:JCity/models/languages/LanguageModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  Future<void> BoxesInit() async {
    await Hive.openBox<LoggingModel>("LoggingBox");
    await Hive.openBox<LanguageModel>("LanguageBox");
  }
}