

import 'package:JCity/models/languages/LanguageModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageInitial> {
  LanguageCubit() : super(LanguageInitial(currentLanguage: Hive.box<LanguageModel>("LanguageBox").get("value")!.language));

  void changeLanguage(String newLanguage) async {
    try {
      final box = Hive.box<LanguageModel>("LanguageBox");
      await box.put("value", LanguageModel(language: newLanguage));
      emit(LanguageInitial(currentLanguage: box.get("value", defaultValue: LanguageModel(language: Intl.systemLocale.split("_").first))!.language));
    } on HiveError catch (e) {
      debugPrint(e.toString());
    }
  }
}
