import 'package:auto_route/auto_route.dart';
import 'package:passvera/presentation/home/home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route,',
  routes: <AutoRoute>[
    // AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: HomeView, initial: true),

  ],
)
class $MyRouter {}
