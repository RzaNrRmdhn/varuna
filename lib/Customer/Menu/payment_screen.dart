import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double panjang = MediaQuery.of(context).size.height;
    int batas = 5;
    if (panjang < 650) {
      setState(() {
        batas = 3;
      });
    } else {
      setState(() {
        batas = 5;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Text(
                        'Payment',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ]
                  ),
                ),
              )
            ),
            Expanded(
              flex: batas,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 244, 244),
                              borderRadius: BorderRadius.circular(20)                          
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order Number',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '2023-09-27-ABCDE',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Payment',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp. 1.000.000',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Payment Within',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Due on 11 Jan 2025, 11:11',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(FontAwesomeIcons.buildingColumns, color: Colors.grey, size: 32),
                                    Text(
                                      'Other Banks',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Recipient Bank',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      )
                                    ),
                                    Text(
                                      'Mandiri',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Text(
                                      '',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Account Number',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      )
                                    ),
                                    Text(
                                      '1234567890',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Text(
                                      'Copy',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        color: Color.fromARGB(255, 99, 213, 102),
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey
                                ),
                                Text(
                                  'It will take less than 10 minutes to verify after making payment',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'SeaBank Mobile Banking',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Icon(Icons.keyboard_arrow_down)
                                  ],
                                ),
                                Divider(color: Colors.grey),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Other Bank iBanking',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Icon(Icons.keyboard_arrow_down)
                                  ],
                                ),
                                Divider(color: Colors.grey),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Other Bank mBanking',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Icon(Icons.keyboard_arrow_down)
                                  ],
                                ),
                                Divider(color: Colors.grey),
                              ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 10.0,
                    ),
                  ],
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Total Payment',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Rp80.000',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50.0,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Payment');
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
                                    'Buy Now',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                Icon(Icons.shopping_cart, color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}