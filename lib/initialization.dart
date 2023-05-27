import 'package:passvera/injection.dart';

class InitializeApp{
  static Future<void> initalize() async {
    // WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
  }
}
