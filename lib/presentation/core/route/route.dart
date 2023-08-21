import 'package:auto_route/auto_route.dart';
import 'package:passvera/presentation/home/home.dart';
import 'package:passvera/presentation/splash/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,',
  routes: <AutoRoute>[
    // AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: HomeView),
    AutoRoute(page: SplashView, initial: true),
  ],
)
class $MyRouter {}
