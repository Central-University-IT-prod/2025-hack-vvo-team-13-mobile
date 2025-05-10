part of 'language_cubit.dart';

abstract class LanguageState {}

class LanguageInitial extends LanguageState {
  final String currentLanguage;
  LanguageInitial({required this.currentLanguage});
}
