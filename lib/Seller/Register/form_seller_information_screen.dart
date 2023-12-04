import 'package:flutter/material.dart';

class FormSellerInformationScreen extends StatelessWidget {
  const FormSellerInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'Set Shop Information',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    )
                  ],
                ),
                // * Shop Name
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Shop Name',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Shop name',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Email
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Phone Number
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Phone Number',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Address
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Address',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Region
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Region',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Region',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Bank Card
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Bank Card',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Bank Card',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Account Number
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account Number',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Account Number',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),
                // * Card Holder
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Card Holder',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Card Holder',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xFFECECEC),
                  ),
                ),

                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ProfileShop');
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
                            'Submit Registration',
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