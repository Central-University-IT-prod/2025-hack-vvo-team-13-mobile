import 'package:JCity/data/BLoc/Language/cubit/language_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignContainer extends StatefulWidget {
  const SignContainer({super.key});

  @override
  State<SignContainer> createState() => _SignContainerState();
}

class _SignContainerState extends State<SignContainer> {
  final languages = [
    "English",
    "Русский",
    "Français",
    "Español"
  ];

  final languagesCode = [
    "en",
    'ru',
    'fr',
    'es',
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final cubit = context.read<LanguageCubit>();
      return Column(
      mainAxisSize: MainAxisSize.min, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(width: width * 0.45, height: MediaQuery.of(context).size.height * 0.14,
          child: TextButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)), backgroundColor: Colors.indigoAccent.shade700.withOpacity(0.2)),
          onPressed: () {
            cubit.changeLanguage(languagesCode[0]);
          },
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.globe, color: Theme.of(context).primaryColor, size: 28,),
                Text(languages[0], style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),),
              ],
            ),
          ),),
        SizedBox(width: 10,),
        SizedBox(
          width: width * 0.45, height: MediaQuery.of(context).size.height * 0.14,
          child: TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),
            onPressed: () {
            cubit.changeLanguage(languagesCode[1]);
          },
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.globe, color: Theme.of(context).primaryColor, size: 28,),
                    Text(languages[1], style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),),
                  ],
                
            ),
          ),
        )
      ],),
      SizedBox(height: 10,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         SizedBox(width: MediaQuery.of(context).size.width * 0.4, height: MediaQuery.of(context).size.height * 0.14,
           child: TextButton(style: TextButton.styleFrom(backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),
            onPressed: () {
              cubit.changeLanguage(languagesCode[2]);
           },
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.globe, color: Theme.of(context).primaryColor, size: 28,),
                  Text(languages[2], style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),),
                ],
           )
           ),
         ),
        SizedBox(width: 10,),
        SizedBox(width: MediaQuery.of(context).size.width * 0.4, height: MediaQuery.of(context).size.height * 0.14,
          child: TextButton(style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)), backgroundColor: Theme.of(context).cardColor),
            onPressed: () {
            cubit.changeLanguage(languagesCode[3]);
          },
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.globe, color: Theme.of(context).primaryColor, size: 28,),
                    Text(languages[3], style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),),
                  ],
            ),
          ),
        )
      ],)
          ],);
  }
}