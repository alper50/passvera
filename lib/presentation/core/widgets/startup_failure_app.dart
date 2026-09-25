import 'package:flutter/material.dart';
import 'package:passvera/initialization.dart';
import 'package:passvera/main.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:passvera/presentation/core/theme/theme.dart';
import 'package:passvera/presentation/core/widgets/form_dialog.dart';

/// Shown instead of the app when secure storage could not be prepared
/// (see [InitializeApp.prepareStorage]). The vault is untouched; retrying is
/// safe.
class StartupFailureApp extends StatefulWidget {
  const StartupFailureApp({super.key});

  @override
  State<StartupFailureApp> createState() => _StartupFailureAppState();
}

class _StartupFailureAppState extends State<StartupFailureApp> {
  bool _retrying = false;

  Future<void> _retry() async {
    setState(() => _retrying = true);
    if (await InitializeApp.prepareStorage()) {
      runApp(const MyApp());
      return;
    }
    if (mounted) setState(() => _retrying = false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColors.surface,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.lock_clock_outlined, size: 64),
                const SizedBox(height: 16),
                const Text(
                  'Could not prepare secure storage',
                  style: MyTextStyles.headline2Bold,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Your data has not been changed. Try again; if this keeps '
                  'happening, restart the phone.',
                  style: MyTextStyles.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                MyFormButton(
                  title: _retrying ? 'Retrying…' : 'Try again',
                  onPressed: _retrying ? null : _retry,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
