import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:passvera/domain/application_model.dart';
import 'package:passvera/presentation/home/authenticator/authenticator_import_view.dart';
import 'package:passvera/presentation/home/authenticator/qr_scan_view.dart';
import 'package:passvera/presentation/home/home.dart';
import 'package:passvera/presentation/home/passwordDetailView/pass_detail_view.dart';
import 'package:passvera/presentation/lock/lock_view.dart';
import 'package:passvera/presentation/onboard/onboard_view.dart';
import 'package:passvera/presentation/profile/profile_view.dart';
import 'package:passvera/presentation/splash/splash_view.dart';

part 'route.gr.dart';

/// Screens are `*View` widgets; their generated routes are `*Route`
/// (e.g. `HomeView` -> `HomeRoute`).
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class MyRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardRoute.page),
        AutoRoute(page: LockRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: PassDetailRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: QrScanRoute.page),
        AutoRoute(page: AuthenticatorImportRoute.page),
      ];
}
