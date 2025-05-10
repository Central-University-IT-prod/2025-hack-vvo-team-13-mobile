import 'package:JCity/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignSubTittle extends StatelessWidget {
  const SignSubTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).SelectLanguage);
  }
}