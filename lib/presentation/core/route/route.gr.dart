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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../../domain/application_model.dart' as _i11;
import '../../home/authenticator/authenticator_import_view.dart' as _i8;
import '../../home/authenticator/qr_scan_view.dart' as _i7;
import '../../home/home.dart' as _i1;
import '../../home/passwordDetailView/pass_detail_view.dart' as _i3;
import '../../lock/lock_view.dart' as _i5;
import '../../onboard/onboard_view.dart' as _i4;
import '../../profile/profile_view.dart' as _i6;
import '../../splash/splash_view.dart' as _i2;

class MyRouter extends _i9.RootStackRouter {
  MyRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    SplashView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashView(),
      );
    },
    PassDetailView.name: (routeData) {
      final args = routeData.argsAs<PassDetailViewArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.PassDetailView(
          key: args.key,
          model: args.model,
        ),
      );
    },
    OnboardView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardView(),
      );
    },
    LockView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LockView(),
      );
    },
    ProfileView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileView(),
      );
    },
    QrScanView.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.QrScanView(),
      );
    },
    AuthenticatorImportView.name: (routeData) {
      final args = routeData.argsAs<AuthenticatorImportViewArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.AuthenticatorImportView(
          key: args.key,
          initialQr: args.initialQr,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          HomeView.name,
          path: '/home-view',
        ),
        _i9.RouteConfig(
          SplashView.name,
          path: '/',
        ),
        _i9.RouteConfig(
          PassDetailView.name,
          path: '/pass-detail-view',
        ),
        _i9.RouteConfig(
          OnboardView.name,
          path: '/onboard-view',
        ),
        _i9.RouteConfig(
          LockView.name,
          path: '/lock-view',
        ),
        _i9.RouteConfig(
          ProfileView.name,
          path: '/profile-view',
        ),
        _i9.RouteConfig(
          QrScanView.name,
          path: '/qr-scan-view',
        ),
        _i9.RouteConfig(
          AuthenticatorImportView.name,
          path: '/authenticator-import-view',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i9.PageRouteInfo<void> {
  const HomeView()
      : super(
          HomeView.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i2.SplashView]
class SplashView extends _i9.PageRouteInfo<void> {
  const SplashView()
      : super(
          SplashView.name,
          path: '/',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i3.PassDetailView]
class PassDetailView extends _i9.PageRouteInfo<PassDetailViewArgs> {
  PassDetailView({
    _i10.Key? key,
    required _i11.ApplicationModel model,
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

  final _i10.Key? key;

  final _i11.ApplicationModel model;

  @override
  String toString() {
    return 'PassDetailViewArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i4.OnboardView]
class OnboardView extends _i9.PageRouteInfo<void> {
  const OnboardView()
      : super(
          OnboardView.name,
          path: '/onboard-view',
        );

  static const String name = 'OnboardView';
}

/// generated route for
/// [_i5.LockView]
class LockView extends _i9.PageRouteInfo<void> {
  const LockView()
      : super(
          LockView.name,
          path: '/lock-view',
        );

  static const String name = 'LockView';
}

/// generated route for
/// [_i6.ProfileView]
class ProfileView extends _i9.PageRouteInfo<void> {
  const ProfileView()
      : super(
          ProfileView.name,
          path: '/profile-view',
        );

  static const String name = 'ProfileView';
}

/// generated route for
/// [_i7.QrScanView]
class QrScanView extends _i9.PageRouteInfo<void> {
  const QrScanView()
      : super(
          QrScanView.name,
          path: '/qr-scan-view',
        );

  static const String name = 'QrScanView';
}

/// generated route for
/// [_i8.AuthenticatorImportView]
class AuthenticatorImportView
    extends _i9.PageRouteInfo<AuthenticatorImportViewArgs> {
  AuthenticatorImportView({
    _i10.Key? key,
    required String initialQr,
  }) : super(
          AuthenticatorImportView.name,
          path: '/authenticator-import-view',
          args: AuthenticatorImportViewArgs(
            key: key,
            initialQr: initialQr,
          ),
        );

  static const String name = 'AuthenticatorImportView';
}

class AuthenticatorImportViewArgs {
  const AuthenticatorImportViewArgs({
    this.key,
    required this.initialQr,
  });

  final _i10.Key? key;

  final String initialQr;

  @override
  String toString() {
    return 'AuthenticatorImportViewArgs{key: $key, initialQr: $initialQr}';
  }
}
