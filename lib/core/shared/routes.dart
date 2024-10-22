import 'package:flutter/material.dart';
import 'package:nutrisnap/core/widgets/bottom_nabar.dart';
import 'package:nutrisnap/features/Onboarding/onboarding_1.dart';
import 'package:nutrisnap/features/auth/signup.dart';
import 'package:nutrisnap/features/auth/singin.dart';
import 'package:nutrisnap/features/auth/splash.dart';
import 'package:nutrisnap/features/dashboard/home/home.dart';
import 'package:nutrisnap/features/dashboard/scanner/qr_code.dart';

import '../../features/dashboard/profile/profile.dart';

// final routes = <String, WidgetBuilder>{
//   LoginScreen.routeName: (BuildContext context) => const LoginScreen(),
//   HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
//   DashBoardScreen.routeName: (BuildContext context) => const DashBoardScreen(),
//   Splash.routeName: (BuildContext context) => const Splash()
// };

Route onGenerateRoute(RouteSettings settings) {
  return switch (settings.name) {
    //ONBORADING
    Splash.routeName => MaterialPageRoute(
        builder: (_) => const Splash(),
        settings: const RouteSettings(name: Splash.routeName),
      ),
    SignIn.routeName => MaterialPageRoute(
        builder: (_) => const SignIn(),
        settings: const RouteSettings(name: SignIn.routeName),
      ),
    SignUp.routeName => MaterialPageRoute(
        builder: (_) => const SignUp(),
        settings: const RouteSettings(name: SignUp.routeName),
      ),
    HomeDashboard.routeName => MaterialPageRoute(
        builder: (_) => HomeDashboard(),
        settings: const RouteSettings(name: HomeDashboard.routeName),
      ),
    BottomNavbar.routeName => MaterialPageRoute(
        builder: (_) => const BottomNavbar(),
        settings: const RouteSettings(name: BottomNavbar.routeName),
      ),
    Onboarding1.routeName => MaterialPageRoute(
        builder: (_) => const Onboarding1(),
        settings: const RouteSettings(name: Onboarding1.routeName),
      ),
    Profile.routeName => MaterialPageRoute(
        builder: (_) => const Profile(),
        settings: const RouteSettings(name: Profile.routeName),
      ),
    QrCodeScanner.routeName => MaterialPageRoute(
        builder: (_) => const QrCodeScanner(),
        settings: const RouteSettings(name: QrCodeScanner.routeName),
      ),
    _ => MaterialPageRoute(
        builder: (_) => const Splash(),
        settings: const RouteSettings(name: Splash.routeName)),
  };
}
