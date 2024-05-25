import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:v_for_v/Pages/authentication_page.dart';
import 'package:v_for_v/Pages/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // Or a splash screen while waiting
          } else if (snapshot.hasError) {
            return ErrorScreen(snapshot.error); // Custom error screen widget
          } else {
            return const SplashScreen(); // Your main app's entry point after initialization
          }
        },
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/authentication': (context) => const AuthenticationPage(),
      },
    );
  }
}

class ErrorScreen extends StatelessWidget {
  final Object? error;

  const ErrorScreen(this.error, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
