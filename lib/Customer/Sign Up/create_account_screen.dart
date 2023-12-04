import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {

  var db = FirebaseFirestore.instance;
  TextEditingController getEmail = TextEditingController();
  TextEditingController getPass = TextEditingController();
  bool obscureText = true;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/');
                    },
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 32,
                  ),
                ),
                const Text(
                  'Create Your Account',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: getEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: getPass,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Password',
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isVisible? Icons.visibility : Icons.visibility_off,
                      ), 
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                          isVisible = !isVisible;
                        });
                      },
                    ),
                    isDense: true,
                  ),
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
                    onPressed: (){
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: getEmail.text, 
                        password: getPass.text
                      ).then((value) => Navigator.pushNamed(context, '/Login'));
                      // final user = <String, dynamic>{
                      //   "email": getEmail.text,
                      //   "password": getPass.text
                      // };
                      // db.collection("Users").doc().set(user).onError(
                      //     (e, _) => ("Error writing document: $e"));
                    }, 
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                            'or continue with',
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
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ), 
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.google),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Poppins'
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Already Have An Account?',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: const Text(
                        'Sign In',
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

// class _VisibilityAdapter extends StatefulWidget {
//   const _VisibilityAdapter({Key? key}) : super(key: key);

//   @override
//   State<_VisibilityAdapter> createState() => __SignUpAdapterState();
// }

// class __SignUpAdapterState extends State<_VisibilityAdapter> {

//   bool isVisible = true;
//   bool obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         isVisible? Icons.visibility : Icons.visibility_off,
//       ), 
//       onPressed: () {
//         setState(() {
//           obscureText = !obscureText;
//           isVisible = !isVisible;
//         });
//       },
//     );
//   }
// }