// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:JCity/auth/Screens/Sign.dart' as _i4;
import 'package:JCity/interface/Screens/Home.dart' as _i1;
import 'package:JCity/interface/Screens/Profile.dart' as _i3;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}


/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i4.SignScreen]
class SignRoute extends _i5.PageRouteInfo<void> {
  const SignRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignScreen();
    },
  );
}
