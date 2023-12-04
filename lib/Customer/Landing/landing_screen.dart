import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // minimum: const EdgeInsets.symmetric(vertical: 52.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 32,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/img/Pic in.png',
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.width,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Let\'s You In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                    ),
                    label: const Text(
                      'Continue With Google',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      const Divider(
                        color: Colors.grey,
                      ),
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          color: Colors.white,
                          child: const Text(
                            'or',
                            style: TextStyle(
                              fontFamily: 'Poppins', 
                              fontSize: 12
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    child: const Text(
                      'Sign In With Your Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Don\'t Have An Account?',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.black
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/CreateAccount');
                      }, 
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}