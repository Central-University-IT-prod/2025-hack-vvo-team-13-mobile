import 'package:JCity/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignElevatedButton extends StatelessWidget {
  const SignElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * 0.9, height: MediaQuery.of(context).size.height * 0.06,
          child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).primaryColor), shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
            onPressed: () {
          }, child: Text(S.of(context).Register, style: Theme.of(context).textTheme.headlineMedium,)),
        ),
        SizedBox(height: 10,),
        Text(S.of(context).Or, style: Theme.of(context).textTheme.labelSmall,),
        SizedBox(height: 10,),
        SizedBox(width: MediaQuery.of(context).size.width * 0.9, height: MediaQuery.of(context).size.height * 0.06,
          child: TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          onPressed: () {

        }, child: Text(S.of(context).Login, style: TextStyle(color: Colors.indigoAccent.shade700, fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize),)),
        )
      ],
    );
  }
}