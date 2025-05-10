
import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => emailController;
  TextEditingController get passwordController => passwordController;
}