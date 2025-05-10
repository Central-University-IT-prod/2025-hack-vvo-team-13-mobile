import 'package:JCity/data/BLoc/Language/cubit/language_cubit.dart';
import 'package:JCity/hive/Adapters/AdaptersInit.dart';
import 'package:JCity/hive/boxes/boxesInit.dart';
import 'package:JCity/routes/router.dart';
import 'package:JCity/submain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

final config = RouterJCity();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Adapters().AdaptersInit();
  await Boxes().BoxesInit();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LanguageCubit())],
      child: SubMain()
    );
  }
}
