import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/authentication');
    });
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/cropped-V-logo-horiz-3.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(width: 7), // Add spacing between the image and text
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'V',
                    style: GoogleFonts.openSans(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '4',
                    style: GoogleFonts.dancingScript(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'V',
                    style: GoogleFonts.openSans(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
