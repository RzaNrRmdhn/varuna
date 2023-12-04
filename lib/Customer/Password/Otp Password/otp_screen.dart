import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {

  final String otpCode, email;
  const OtpScreen(this.otpCode, this.email, {Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var checkOtp;


  void _sendOtp() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    String email = widget.email;
    try {
      await auth.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email sent successfully'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email not sent'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 32.0),
            child: Column(
              children: <Widget>[
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
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 200.0),
                const Text(
                  'Code Has Been Seen to your Email Account',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  clearText: true,
                  numberOfFields: 4,
                  showFieldAsBox: true,
                  margin: const EdgeInsets.all(5.0),
                  fieldWidth: 60,
                  obscureText: true,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  onSubmit: (String verificationCode) => checkOtp = verificationCode,
            
                ),
                const SizedBox(height: 200.0),
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
                      if(checkOtp == widget.otpCode){
                        _sendOtp();
                        Navigator.pushNamed(context, '/Login');
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('OTP Code'),
                              content: const Text('Your OTP Code is Wrong'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return AlertDialog(
                      //       title: const Text('OTP Code'),
                      //       content: Text('Your OTP Code is $a'),
                      //       actions: [
                      //         TextButton(
                      //           onPressed: () {
                      //             Navigator.pop(context);
                      //           },
                      //           child: const Text('OK'),
                      //         ),
                      //       ],
                      //     );
                      //   },
                      // );
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