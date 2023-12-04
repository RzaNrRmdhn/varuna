import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Otp Password/otp_screen.dart';


class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  TextEditingController getEmail = TextEditingController();

  Future _sendOtp({
    String? email,
    String? message
  }) async {

    const serviceId = 'service_wihw19j';
    const templateId = 'template_tltson9';
    const userId = 'xvQWTvdQPPQn8pzey';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final res = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'from_name': 'varuna',
          'user_email': email,
          'user_subject': 'reza.nur.nur@gmail.com',
          'message': message,
        },
      })
    );

    // ? UserEmail == Recipient atau Penerima
    if(res.body == 'OK'){
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(message!, email!)));
    }
  }

  Random random = Random();
  // ignore: prefer_typing_uninitialized_variables
  var otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Login');
                        },
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 32,
                      ),
                      const Text(
                        'Forgot Your Password',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                RichText(
                  text: const TextSpan(
                  text: 'Enter your email address and get your new password',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500
                    )
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  controller: getEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 100.0),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        otp = () => List.generate(4, (index) => random.nextInt(9)).join();
                      });
                      _sendOtp(message: otp().toString(), email: getEmail.text);
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

