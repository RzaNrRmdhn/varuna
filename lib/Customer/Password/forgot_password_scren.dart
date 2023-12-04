import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
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
                const SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/img/Pic Contact Details.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                const SizedBox(height: 20.0),
                RichText(
                  text: const TextSpan(
                    text: 'Select which contact details should we use to reset your password',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/VerifyEmail');
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.email, color: Colors.black),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Via Email',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}