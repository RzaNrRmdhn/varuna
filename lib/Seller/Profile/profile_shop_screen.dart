import 'package:flutter/material.dart';

class ProfileShopScreen extends StatelessWidget {
  const ProfileShopScreen({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.store_rounded, size: 50),
                        Column(
                          children: [
                            Text(
                              'Store Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Store Description',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.mode_edit_outlined, size: 32),
                    )
                  ],
                ),
                const Divider(color: Colors.grey),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_2_outlined),
                        Text(
                          'Shop Account',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                const Divider(color: Colors.grey),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Item',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.add_circle_outline_rounded, size: 32),
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (){},
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/tzuyu.jpg', fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Item Price',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Color(0xFFFFD700)),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "Awaiting",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ? On ship
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (){},
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/tzuyu.jpg', fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Item Price',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Color(0xFFFFD700)),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.6,
                              decoration: BoxDecoration(
                                color: Colors.yellowAccent[100],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "On Ship",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ? On Sale
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (){},
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/tzuyu.jpg', fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Item Price',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Color(0xFFFFD700)),
                                  Text(
                                    "A",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.6,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent[100],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "On Sale",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ? On Deliver
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (){},
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/tzuyu.jpg', fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Item Price',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Color(0xFFFFD700)),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.6,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent[100],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "On Delivery",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ? Sold Out
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (){},
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/tzuyu.jpg', fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Item Price',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Color(0xFFFFD700)),
                                  Text(
                                    "A",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.6,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent[100],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "Sold Out",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ? Rejected
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (){},
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/img/tzuyu.jpg', fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Item Price',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Color(0xFFFFD700)),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.6,
                              decoration: BoxDecoration(
                                color: Colors.redAccent[100],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "Rejected",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ]
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          )
        )
      )
    );
  }
}