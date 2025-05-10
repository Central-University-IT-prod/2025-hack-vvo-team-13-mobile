import 'package:JCity/models/auth/LoggingModel.dart';
import 'package:JCity/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/adapters.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final box = Hive.box<LoggingModel>("LoggingBox");
    if (box.get("value", defaultValue: LoggingModel(isLogged: false))!.isLogged == true) {
      resolver.next(true);
    } else {
      resolver.redirect(SignRoute());
    }
  }
}