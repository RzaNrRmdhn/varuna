import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 24.0),
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
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Stack(
                  children:[
                    ClipOval(
                      child: Material(
                        color: Colors.transparent,
                        child: Ink.image(
                          image: Image.asset('assets/img/tzuyu.jpg').image,
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                          child: InkWell(
                            onTap: (){},
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 4.0,
                      bottom: 0,
                      child: ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(3.0),
                          color: Colors.white,
                          child: ClipOval(
                            child: Container(
                              color: const Color(0xFFECECEC),
                              child: IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.edit, size: 32),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20) ,
                    hintText: 'Nama',
                  ),
                ),
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20) ,
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20) ,
                    hintText: 'Phone Number',
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                    'Change Password?',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  )
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {},
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
                            'Update Profile',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'Poppins'
                            ),
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