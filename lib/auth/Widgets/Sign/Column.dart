import 'package:JCity/auth/Widgets/Sign/Children/Container.dart';
import 'package:JCity/auth/Widgets/Sign/Children/ElevatedButton.dart';
import 'package:JCity/auth/Widgets/Sign/Children/SubTittle.dart';
import 'package:JCity/auth/Widgets/Sign/Children/Text.dart';
import 'package:JCity/auth/Widgets/Sign/Children/TextFormField.dart';
import 'package:flutter/material.dart';

class SignColumn extends StatefulWidget {
  const SignColumn({super.key});

  @override
  State<SignColumn> createState() => _SignColumnState();
}

class _SignColumnState extends State<SignColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(width: MediaQuery.of(context).size.width * 0.9,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SignText(),
              SizedBox(height: 20,),
              SignTextFormField(),
              SizedBox(height: 10,),
              SignElevatedButton(),
              SizedBox(height: 10,),
              SignSubTittle(),
              SizedBox(height: 20,),
              SignContainer()
            ],
        ),
      ),
    );
  }
}