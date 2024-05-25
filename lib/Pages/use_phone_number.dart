import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:v_for_v/Pages/authentication_page.dart';
import 'package:v_for_v/Pages/otp_screen.dart';

class UsePhoneNumberPage extends StatefulWidget {
  const UsePhoneNumberPage({super.key});

  @override
  _UsePhoneNumberPageState createState() => _UsePhoneNumberPageState();
}

class _UsePhoneNumberPageState extends State<UsePhoneNumberPage> {
  Country? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AuthenticationPage(),
                  ));
                },
              ),
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What's your",
                    style: TextStyle(
                      fontSize: 44.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Phone Number?",
                    style: TextStyle(
                      fontSize: 44.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "We protect our",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Community by making",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Text(
                "sure everyone on V4V",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Text(
                "is real.",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "Phone number",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode: true,
                          onSelect: (Country country) {
                            setState(() {
                              _selectedCountry = country;
                            });
                          },
                          countryListTheme: const CountryListThemeData(
                            flagSize: 25,
                            backgroundColor: Colors.white,
                            textStyle:
                                TextStyle(fontSize: 16, color: Colors.blueGrey),
                            bottomSheetHeight: 350,
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.arrow_drop_down),
                            const SizedBox(width: 10),
                            Text(
                              _selectedCountry != null
                                  ? _selectedCountry!.countryCode == "US"
                                      ? "+1"
                                      : "+${_selectedCountry!.phoneCode}"
                                  : "Country",
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    margin: const EdgeInsets.only(top: 18),
                    width: 220, // Set the desired width
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                      maxLength:
                          10, // Set the maximum length of the phone number
                      // Add validation and controller as needed
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 290),
              const Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 40,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "We never share this with",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "anyone and it won't be on",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "your profile.",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const OTPScreen(),
          )); // Handle the button press, e.g., navigate to the next screen.
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.arrow_forward,
          size: 25,
        ), // Set the background color of the button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Adjust the location of the button
    );
  }
}
