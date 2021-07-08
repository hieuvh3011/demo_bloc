import 'package:demo_bloc/screens/home_screen.dart';
import 'package:demo_bloc/screens/login_screen.dart';
import 'package:demo_bloc/screens/main_bottom_tab.dart';
import 'package:demo_bloc/screens/splash_screen.dart';

class MainRoute {
  MainRoute._();

  static const String SPLASH_SCREEN = '/';
  static const String LOGIN_SCREEN = '/LOGIN_SCREEN';
  static const String HOME_SCREEN = '/HOME_SCREEN';
  static const String ACCOUNT_SCREEN = '/ACCOUNT_SCREEN';
  static const String SETTING_SCREEN = '/SETTING_SCREEN';
  static const String BOTTOM_TAB = '/BOTTOM_TAB';

  static getRoute() {
    return {
      SPLASH_SCREEN: (context) => SplashScreen(),
      LOGIN_SCREEN: (context) => LoginScreen(),
      HOME_SCREEN: (context) => HomeScreen(),
      BOTTOM_TAB: (context) => MainBottomTab()
    };
  }
}
