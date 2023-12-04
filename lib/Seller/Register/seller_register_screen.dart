import 'package:flutter/material.dart';

class SellerRegisterScreen extends StatelessWidget {
  const SellerRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Text(
                      'Start Selling',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 100.0),
                Image.asset('assets/img/start selling.png'),
                const SizedBox(height:20.0),
                const Text(
                  'To get started, register as a seller by providing the necessary information',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 100.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/FormSeller');
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Start Registration',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Icon(Icons.person, color: Colors.white)
                      ],
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