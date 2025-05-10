import 'package:JCity/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignText extends StatelessWidget {
  const SignText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).CreateAccount);
  }
}