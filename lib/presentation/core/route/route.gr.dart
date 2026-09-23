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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../../domain/application_model.dart' as _i10;
import '../../home/authenticator/qr_scan_view.dart' as _i7;
import '../../home/home.dart' as _i1;
import '../../home/passwordDetailView/pass_detail_view.dart' as _i3;
import '../../lock/lock_view.dart' as _i5;
import '../../onboard/onboard_view.dart' as _i4;
import '../../profile/profile_view.dart' as _i6;
import '../../splash/splash_view.dart' as _i2;

class MyRouter extends _i8.RootStackRouter {
  MyRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    SplashView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashView(),
      );
    },
    PassDetailView.name: (routeData) {
      final args = routeData.argsAs<PassDetailViewArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.PassDetailView(
          key: args.key,
          model: args.model,
        ),
      );
    },
    OnboardView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardView(),
      );
    },
    LockView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LockView(),
      );
    },
    ProfileView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileView(),
      );
    },
    QrScanView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.QrScanView(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomeView.name,
          path: '/home-view',
        ),
        _i8.RouteConfig(
          SplashView.name,
          path: '/',
        ),
        _i8.RouteConfig(
          PassDetailView.name,
          path: '/pass-detail-view',
        ),
        _i8.RouteConfig(
          OnboardView.name,
          path: '/onboard-view',
        ),
        _i8.RouteConfig(
          LockView.name,
          path: '/lock-view',
        ),
        _i8.RouteConfig(
          ProfileView.name,
          path: '/profile-view',
        ),
        _i8.RouteConfig(
          QrScanView.name,
          path: '/qr-scan-view',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i8.PageRouteInfo<void> {
  const HomeView()
      : super(
          HomeView.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i2.SplashView]
class SplashView extends _i8.PageRouteInfo<void> {
  const SplashView()
      : super(
          SplashView.name,
          path: '/',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i3.PassDetailView]
class PassDetailView extends _i8.PageRouteInfo<PassDetailViewArgs> {
  PassDetailView({
    _i9.Key? key,
    required _i10.ApplicationModel model,
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

  final _i9.Key? key;

  final _i10.ApplicationModel model;

  @override
  String toString() {
    return 'PassDetailViewArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i4.OnboardView]
class OnboardView extends _i8.PageRouteInfo<void> {
  const OnboardView()
      : super(
          OnboardView.name,
          path: '/onboard-view',
        );

  static const String name = 'OnboardView';
}

/// generated route for
/// [_i5.LockView]
class LockView extends _i8.PageRouteInfo<void> {
  const LockView()
      : super(
          LockView.name,
          path: '/lock-view',
        );

  static const String name = 'LockView';
}

/// generated route for
/// [_i6.ProfileView]
class ProfileView extends _i8.PageRouteInfo<void> {
  const ProfileView()
      : super(
          ProfileView.name,
          path: '/profile-view',
        );

  static const String name = 'ProfileView';
}

/// generated route for
/// [_i7.QrScanView]
class QrScanView extends _i8.PageRouteInfo<void> {
  const QrScanView()
      : super(
          QrScanView.name,
          path: '/qr-scan-view',
        );

  static const String name = 'QrScanView';
}
