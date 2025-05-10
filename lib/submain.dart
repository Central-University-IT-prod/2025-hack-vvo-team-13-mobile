import 'package:JCity/data/BLoc/Language/cubit/language_cubit.dart';
import 'package:JCity/generated/l10n.dart';
import 'package:JCity/main.dart';
import 'package:JCity/theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class SubMain extends StatelessWidget {
  const SubMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageInitial>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: whiteTheme(),
          darkTheme: blackTheme(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: Locale(state.currentLanguage),
          routerConfig: config.config(),
        );
      },
    );
  }
}
