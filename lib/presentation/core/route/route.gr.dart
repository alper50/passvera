// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../domain/application_model.dart' as _i7;
import '../../home/home.dart' as _i1;
import '../../home/pass_detail_view.dart' as _i3;
import '../../onboard/onboard_view.dart' as _i4;
import '../../splash/splash_view.dart' as _i2;

class MyRouter extends _i5.RootStackRouter {
  MyRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    SplashView.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashView(),
      );
    },
    PassDetailView.name: (routeData) {
      final args = routeData.argsAs<PassDetailViewArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.PassDetailView(
          key: args.key,
          model: args.model,
        ),
      );
    },
    OnboardView.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.OnboardView(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeView.name,
          path: '/home-view',
        ),
        _i5.RouteConfig(
          SplashView.name,
          path: '/',
        ),
        _i5.RouteConfig(
          PassDetailView.name,
          path: '/pass-detail-view',
        ),
        _i5.RouteConfig(
          OnboardView.name,
          path: '/onboard-view',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i5.PageRouteInfo<void> {
  const HomeView()
      : super(
          HomeView.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i2.SplashView]
class SplashView extends _i5.PageRouteInfo<void> {
  const SplashView()
      : super(
          SplashView.name,
          path: '/',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i3.PassDetailView]
class PassDetailView extends _i5.PageRouteInfo<PassDetailViewArgs> {
  PassDetailView({
    _i6.Key? key,
    required _i7.ApplicationModel model,
  }) : super(
          PassDetailView.name,
          path: '/pass-detail-view',
          args: PassDetailViewArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'PassDetailView';
}

class PassDetailViewArgs {
  const PassDetailViewArgs({
    this.key,
    required this.model,
  });

  final _i6.Key? key;

  final _i7.ApplicationModel model;

  @override
  String toString() {
    return 'PassDetailViewArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i4.OnboardView]
class OnboardView extends _i5.PageRouteInfo<void> {
  const OnboardView()
      : super(
          OnboardView.name,
          path: '/onboard-view',
        );

  static const String name = 'OnboardView';
}
