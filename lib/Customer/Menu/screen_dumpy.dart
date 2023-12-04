import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:varuna/Customer/Menu/Components/dummy.dart';

class ScreenDumpy extends StatefulWidget {
  const ScreenDumpy({super.key});

  @override
  State<ScreenDumpy> createState() => _ScreenDumpyState();
}

class _ScreenDumpyState extends State<ScreenDumpy> {
  // bool isGradeA = true;
  // bool isGradeB = false;
  // bool isGradeC = false;
  TextEditingController categories = TextEditingController();
  var db = FirebaseFirestore.instance;

  // @override
  // Widget build(BuildContext context) {
  //   var widget = 'abc';
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 24.0),
  //         child: Column(
  //           children: [
  //             Expanded(
  //               child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     IconButton(
  //                       onPressed: () {
  //                         Navigator.pop(context);
  //                       },
  //                       icon: const Icon(Icons.arrow_back),
  //                       iconSize: 32,
  //                     ),
  //                     Text(
  //                       widget,
  //                       style: const TextStyle(
  //                         fontFamily: 'Poppins',
  //                         fontSize: 18.0,
  //                         fontWeight: FontWeight.bold
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 const Icon(Icons.search),
  //               ],
  //               ),
  //             ),
  //             Expanded(
  //               child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 OutlinedButton(
  //                   onPressed: (){
  //                     setState(() {
  //                       isGradeA = true;
  //                       isGradeB = false;
  //                       isGradeC = false;
  //                     });
  //                   },
  //                   style: OutlinedButton.styleFrom(
  //                     backgroundColor: const Color(0xFFECECEC),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(15.0)
  //                     ),
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     children: <Widget>[
  //                       Icon(Icons.star_rounded, color: isGradeA? const Color(0xFFFFD700): Colors.grey),
  //                       const Text(
  //                         'Grade A',
  //                         style: TextStyle(
  //                           fontFamily: 'Poppins',
  //                           fontSize: 12.0,
  //                           fontWeight: FontWeight.bold
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 OutlinedButton(
  //                   onPressed: (){
  //                     setState(() {
  //                       isGradeA = false;
  //                       isGradeB = true;
  //                       isGradeC = false;
  //                     });
  //                   },
  //                   style: OutlinedButton.styleFrom(
  //                     backgroundColor: const Color(0xFFECECEC),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(15.0)
  //                     ),
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     children: <Widget>[
  //                       Icon(Icons.star_rounded,color: isGradeB? const Color(0xFFFFD700): Colors.grey),
  //                       const Text(
  //                         'Grade B',
  //                         style: TextStyle(
  //                           fontFamily: 'Poppins',
  //                           fontSize: 12.0,
  //                           fontWeight: FontWeight.bold
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 OutlinedButton(
  //                   onPressed: (){
  //                     setState(() {
  //                       isGradeA = false;
  //                       isGradeB = false;
  //                       isGradeC = true;
  //                     });
  //                   },
  //                   style: OutlinedButton.styleFrom(
  //                     backgroundColor: const Color(0xFFECECEC),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(15.0)
  //                     ),
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     children: <Widget>[
  //                       Icon(Icons.star_rounded, color: isGradeC? const Color(0xFFFFD700): Colors.grey),
  //                       const Text(
  //                         'Grade C',
  //                         style: TextStyle(
  //                           fontFamily: 'Poppins',
  //                           fontSize: 12.0,
  //                           fontWeight: FontWeight.bold
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //               ),
  //             ),
  //             const Expanded(
  //               flex: 10,
  //               child: GridProduct(),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  var abc = [];
  List<String> urlImage = [];
  FirebaseAuth auth = FirebaseAuth.instance;
  String imageUrl = '';

  Future<String> getUserId() async {
    User? user = auth.currentUser;

    if (user != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Success'),
            content: const Text('Data has been added'),
            actions: [
              TextButton(
                onPressed: () {
                  urlImage.clear();
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      return user.uid;
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Fail'),
            content: const Text('Data fail '),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      throw Exception("User not found");
    }
  }

  void signOut() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      await auth.signOut();
      print("User logged out successfully");
      // Lakukan navigasi ke halaman login atau halaman utama aplikasi setelah logout
    } catch (e) {
      print("Error: $e");
    }
  }

  Random random = Random();
  // ignore: prefer_typing_uninitialized_variables
  var idProduct;

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
                      text:
                          'Enter your email address and get your new password',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  controller: categories,
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
                    onPressed: () async {
                      // db.collection('categories').doc('shoes').collection('grade').doc('grade C').collection('Product').doc().set({
                      //   'name': categories.text,
                      // });
                      setState(() {
                        idProduct = () => List.generate(4, (index) => random.nextInt(9)).join();
                      });
                      
                      abc.add(categories.text);
                      try{
                        String name = await getUserId();

                        db.collection('Product').doc().set({
                        'id_product': idProduct().toString(),
                        'id_seller': name,
                        'Name': 'TWS',
                        'grade': 'B',
                        'color': '-',
                        'Size': '10cm x 10cm',
                        'Material': 'Plastik',
                        'Length of Use': '2 Month',
                        'Price': 50000,
                        'categories': 'Electronics',
                        'urlImage': urlImage,
                        'Description': '100% SRGB'
                      });
                      
                      }catch(e){
                        print("error");
                      }
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
                SizedBox(height: 20),
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
                    onPressed: () async {
                      // signOut();
                      ImagePicker imagePicker = ImagePicker();
                      List<XFile?> file = await imagePicker.pickMultiImage();

                      if(file != null){
                        for(int i = 0; i < file.length; i++){
                          File imageFile = File(file[i]!.path);
                          String fileName = file[i]!.path.split('/').last;
                          Reference ref = FirebaseStorage.instance.ref('Product').child(fileName);
                          UploadTask uploadTask = ref.putFile(imageFile);
                          uploadTask.whenComplete(() async {
                            try{
                              imageUrl = await ref.getDownloadURL();
                              urlImage.add(imageUrl);
                            }catch(e){
                              print(e);
                            }
                          });
                        }
                      }
                    },
                    child: const Text(
                      'Gambar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                      // signOut();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DummyScreen()));
                    },
                    child: const Text(
                      'pindah',
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
