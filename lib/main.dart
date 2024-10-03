import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/routes.dart';
import 'package:nutrisnap/features/auth/splash.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Ashopree',
        theme: ThemeData(),
        home: Splash(),
        debugShowCheckedModeBanner: false,
        // debugShowCheckedModeBanner: false,
        // title: F.title,
        initialRoute: Splash.routeName,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
