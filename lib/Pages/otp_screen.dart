import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ), // Back icon
          onPressed: () {
            Navigator.of(context).pop(); // Pop the current screen
          },
        ),
        backgroundColor: Colors.amberAccent, // Set background color
        elevation: 0, // Remove the elevation shadow
      ),
      backgroundColor: Colors.amberAccent, // Set the same background color
      body: Padding(
        padding: const EdgeInsets.all(25.0), // Apply margin to the content
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Verify your",
                style: TextStyle(
                  fontSize: 44.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const Text(
                "number?",
                style: TextStyle(
                  fontSize: 44.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Enter the code we've sent",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Text(
                "by text to ",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Text(
                "'Phone number'",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                '   Code',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Implement 4 input fields
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(_fieldOne, true), // auto focus
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false),
                  OtpInput(_fieldFive, false),
                  OtpInput(_fieldSix, false)
                ],
              ),
              const SizedBox(
                height: 330,
              ),
              // Display the entered OTP code
              Text(
                _otp ?? "Didn't get a code?",
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the button press, e.g., navigate to the next screen.
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.arrow_forward), // Set the background color of the button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
          hintStyle: TextStyle(color: Colors.amberAccent, fontSize: 20.0),
          filled: true, // Add this line
          fillColor: Colors.white, // Set the background color to white
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
