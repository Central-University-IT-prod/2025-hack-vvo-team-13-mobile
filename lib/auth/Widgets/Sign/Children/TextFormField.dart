import 'package:JCity/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignTextFormField extends StatefulWidget {
  const SignTextFormField({super.key});

  @override
  State<SignTextFormField> createState() => _SignTextFormFieldState();
}

class _SignTextFormFieldState extends State<SignTextFormField> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Form(child: TextFormField(
        validator: (value) {
          return null;
        },
        decoration: InputDecoration(fillColor: Colors.grey.withOpacity(0.3), filled: true, enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          hintText: S.of(context).Enteremail,
          hintStyle: Theme.of(context).textTheme.headlineSmall
          )
      )),
      SizedBox(height: 10,),
      Form(child: TextFormField(
         validator: (value) {
          return null;
        },
        obscureText: isObscured,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.3),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          suffixIcon: IconButton(style: ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.transparent.withOpacity(0.06))),
            icon: AnimatedSwitcher(duration: Duration(milliseconds: 400),
              child: Icon(key: ValueKey(isObscured),
                isObscured == true ? CupertinoIcons.eye_slash : CupertinoIcons.eye, color: Colors.grey.shade600,)), onPressed: () {
            setState(() {
              isObscured = !isObscured;
            });
          },),
          hintText: S.of(context).Createpassword,
          hintStyle: Theme.of(context).textTheme.headlineSmall
        ),
      ))
    ],);
  }
}