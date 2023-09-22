import 'package:flutter/material.dart';
import 'package:v_for_v/Pages/authentication_page.dart';
import 'package:v_for_v/Pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/authentication': (context) => AuthenticationPage()
      },
    );
  }
}
