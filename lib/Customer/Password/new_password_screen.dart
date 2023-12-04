import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

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
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50.0),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/img/Pic Change Password.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create Your New Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Recent Password',
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.visibility_off),
                    ),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'New Password',
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.visibility_off),
                    ),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(
                      'Remember Me',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
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
                    onPressed: () {},
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
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