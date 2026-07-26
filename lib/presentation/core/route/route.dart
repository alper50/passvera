import 'package:auto_route/auto_route.dart';
import 'package:passvera/presentation/home/authenticator/qr_scan_view.dart';
import 'package:passvera/presentation/home/home.dart';
import 'package:passvera/presentation/home/passwordDetailView/pass_detail_view.dart';
import 'package:passvera/presentation/lock/lock_view.dart';
import 'package:passvera/presentation/onboard/onboard_view.dart';
import 'package:passvera/presentation/profile/profile_view.dart';
import 'package:passvera/presentation/splash/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView),
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: PassDetailView),
    AutoRoute(page: OnboardView),
    AutoRoute(page: LockView),
    AutoRoute(page: ProfileView),
    AutoRoute(page: QrScanView),
  ],
)
class $MyRouter {}
