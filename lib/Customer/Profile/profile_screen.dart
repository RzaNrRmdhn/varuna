import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/img/varuna.png",
                            width: 50,
                            height: 50,
                          ),
                          const Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('assets/img/tzuyu.jpg'),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        'Your Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/EditProfile');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person_3_outlined),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/ListOrder');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.receipt_long_outlined),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'List Order',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/Seller');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.storefront_outlined),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Start Selling',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 10.0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/HomeScreen');
                    },
                    icon:
                        const Icon(Icons.home_outlined, color: Colors.black, size: 32),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ProfileScreen');
                    },
                    icon: const Icon(Icons.person_2 ,color: Colors.black, size: 32),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}