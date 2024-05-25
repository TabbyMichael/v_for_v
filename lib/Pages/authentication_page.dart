import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_for_v/Pages/use_phone_number.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25), // Add margin from the left
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align buttons to the left
                children: <Widget>[
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/cropped-V-logo-horiz-3.png',
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'V',
                                style: GoogleFonts.openSans(
                                  fontSize: 46.0,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '4',
                                style: GoogleFonts.dancingScript(
                                  fontSize: 46.0,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: 'V',
                                style: GoogleFonts.openSans(
                                  fontSize: 46.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Leave the D',
                            style: GoogleFonts.blackOpsOne(
                              fontSize: 38.0,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: '\nat the door',
                            style: GoogleFonts.blackOpsOne(
                              fontSize: 38.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 290, // Adjust the vertical spacing as needed
                  ),
                  const Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Apple button press
                    },
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Continue with Apple',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                      minimumSize: const Size(380, 50), // Adjust button size
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Facebook button press
                    },
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(380, 50), // Adjust button size
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UsePhoneNumberPage(),
                      )); // Handle Phone button press
                    },
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 20,
                    ), // Make icon black
                    label: const Text(
                      'Use a phone number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(380, 50), // Adjust button size
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Center(
                          child: Text(
                            'By signing up, you agree to our',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              // Handle tapping the "Terms" link
                            },
                            child: const Text(
                              'Terms.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'See how we use your data in our',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              // Handle tapping the "Privacy Policy" link
                            },
                            child: const Text(
                              'Privacy Policy.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'We never post to Facebook.',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
