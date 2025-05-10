
import 'package:JCity/routes/Guards/AuthGuard.dart';
import 'package:JCity/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class RouterJCity extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SignRoute.page, path: '/sign'),
    AutoRoute(page: HomeRoute.page, initial: true, path: '/', guards: [AuthGuard()]),
    AutoRoute(page: ProfileRoute.page, path: '/profile', guards: [AuthGuard()])
  ];

}