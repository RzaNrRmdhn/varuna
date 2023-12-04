import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {

  final String product;
  final String price;

  const DetailProductScreen({Key? key, required this.product, required this.price}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {

    double panjang = MediaQuery.of(context).size.height;
    int batas = 5;
    if(panjang < 650) {
      setState(() {
        batas = 3;
      });
    }else{
      setState(() {
        batas = 5;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 750,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 32.0,
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "Detail Product",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Expanded(
                flex: batas, 
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    child: StreamBuilder(
                      stream: db.collection('Product').where('id_product', isEqualTo: widget.product).snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const CircularProgressIndicator(color: Colors.red);
                        }
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                _carouselSlider(snapshot, index),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      snapshot.data!.docs[index]['Name'],
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                      },
                                      icon: const Icon(Icons.favorite_outline),
                                      iconSize: 24.0,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5.0),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                    height: 40,
                                    width: MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFECECEC),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.star_rate_rounded, color: Color(0xFFFFD700)),
                                        Text(
                                          "Grade ${snapshot.data!.docs[index]['grade']}",
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500
                                          ),
                                        )
                                      ]
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5.0),
                                const Row(
                                  children: [
                                    Text(
                                      "Delivery From",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                      )
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(Icons.location_on_sharp, color: Colors.red),
                                    Text(
                                      "Lampung",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500
                                      )
                                    ),
                                  ]
                                ),
                                const SizedBox(height: 15.0),
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Specification",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                      height: MediaQuery.of(context).size.height / 5.5,
                                      width: MediaQuery.of(context).size.width / 1.3,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFECECEC),
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                              "Color",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              snapshot.data!.docs[index]['color'],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ]
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                              "Size",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              snapshot.data!.docs[index]['Size'],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ]
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                              "Material",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              snapshot.data!.docs[index]['Material'],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ]
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                              "Length of Use",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              snapshot.data!.docs[index]['Length of Use'],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ]
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]
                            );
                          },
                        );
                      }
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
                      topRight: Radius.circular(25.0)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Price',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp${widget.price}',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700
                              ),
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
                                    borderRadius:
                                        BorderRadius.circular(25.0),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Buy Now',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: 'Poppins'
                                        ),
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
                )
              ),
            ],
          )
        )
      ),
    );
  }

  Container _carouselSlider(AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot, int index) {
    return Container(
      width: double.infinity,
      height: 175.0, 
      margin: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          InkWell(
            onTap: (){},
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: ((index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                })
              ),
              items: snapshot.data!.docs[index]['urlImage'].isNotEmpty ? snapshot.data!.docs[index]['urlImage'].map<Widget>((item) => Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(item),
                    fit: BoxFit.cover,
                  )
                ),
              )).toList() : []
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: snapshot.data!.docs[index]['urlImage'].map<Widget>((item) {
                int indext = snapshot.data!.docs[index]['urlImage'].indexOf(item);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == indext ? Colors.black : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

