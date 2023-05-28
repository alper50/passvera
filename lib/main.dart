import 'package:flutter/material.dart';
import 'package:passvera/initialization.dart';
import 'package:passvera/presentation/core/theme/theme.dart';

import 'presentation/core/route/route.gr.dart';

void main() {
  InitializeApp.initalize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: MyThemeData.lightheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      builder: (context, child) => child!,
    );
  }
}
