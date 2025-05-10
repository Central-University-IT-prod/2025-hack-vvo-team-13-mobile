import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:JCity/auth/Widgets/Sign/Column.dart';


@RoutePage()
class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignColumn());
  }
}