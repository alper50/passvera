// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'route.dart';

/// generated route for
/// [AuthenticatorImportView]
class AuthenticatorImportRoute
    extends PageRouteInfo<AuthenticatorImportRouteArgs> {
  AuthenticatorImportRoute({
    Key? key,
    required String initialQr,
    List<PageRouteInfo>? children,
  }) : super(
          AuthenticatorImportRoute.name,
          args: AuthenticatorImportRouteArgs(key: key, initialQr: initialQr),
          initialChildren: children,
        );

  static const String name = 'AuthenticatorImportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthenticatorImportRouteArgs>();
      return AuthenticatorImportView(key: args.key, initialQr: args.initialQr);
    },
  );
}

class AuthenticatorImportRouteArgs {
  const AuthenticatorImportRouteArgs({this.key, required this.initialQr});

  final Key? key;

  final String initialQr;

  @override
  String toString() {
    return 'AuthenticatorImportRouteArgs{key: $key, initialQr: $initialQr}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AuthenticatorImportRouteArgs) return false;
    return key == other.key && initialQr == other.initialQr;
  }

  @override
  int get hashCode => key.hashCode ^ initialQr.hashCode;
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [LockView]
class LockRoute extends PageRouteInfo<void> {
  const LockRoute({List<PageRouteInfo>? children})
      : super(LockRoute.name, initialChildren: children);

  static const String name = 'LockRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LockView();
    },
  );
}

/// generated route for
/// [OnboardView]
class OnboardRoute extends PageRouteInfo<void> {
  const OnboardRoute({List<PageRouteInfo>? children})
      : super(OnboardRoute.name, initialChildren: children);

  static const String name = 'OnboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardView();
    },
  );
}

/// generated route for
/// [PassDetailView]
class PassDetailRoute extends PageRouteInfo<PassDetailRouteArgs> {
  PassDetailRoute({
    Key? key,
    required ApplicationModel model,
    List<PageRouteInfo>? children,
  }) : super(
          PassDetailRoute.name,
          args: PassDetailRouteArgs(key: key, model: model),
          initialChildren: children,
        );

  static const String name = 'PassDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PassDetailRouteArgs>();
      return PassDetailView(key: args.key, model: args.model);
    },
  );
}

class PassDetailRouteArgs {
  const PassDetailRouteArgs({this.key, required this.model});

  final Key? key;

  final ApplicationModel model;

  @override
  String toString() {
    return 'PassDetailRouteArgs{key: $key, model: $model}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PassDetailRouteArgs) return false;
    return key == other.key && model == other.model;
  }

  @override
  int get hashCode => key.hashCode ^ model.hashCode;
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileView();
    },
  );
}

/// generated route for
/// [QrScanView]
class QrScanRoute extends PageRouteInfo<void> {
  const QrScanRoute({List<PageRouteInfo>? children})
      : super(QrScanRoute.name, initialChildren: children);

  static const String name = 'QrScanRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QrScanView();
    },
  );
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashView();
    },
  );
}
