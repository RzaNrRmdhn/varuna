import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'detail_product_screen.dart';

class ProductByCategoriesScreen extends StatefulWidget {
  final String category;

  const ProductByCategoriesScreen(this.category, {Key? key}) : super(key: key);

  @override
  State<ProductByCategoriesScreen> createState() =>
      _ProductByCategoriesScreenState();
}

class _ProductByCategoriesScreenState extends State<ProductByCategoriesScreen> {
  bool isGradeA = true;
  bool isGradeB = false;
  bool isGradeC = false;
  String grade = 'A';
  String id = '';
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          iconSize: 32,
                        ),
                        Text(
                          widget.category,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Icon(Icons.search),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              isGradeA = true;
                              isGradeB = false;
                              isGradeC = false;
                              grade = 'A';
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFFECECEC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star_rounded,
                                  color: isGradeA? const Color(0xFFFFD700) : Colors.grey),
                              const Text(
                                'Grade A',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20.0,),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              isGradeA = false;
                              isGradeB = true;
                              isGradeC = false;
                              grade = 'B';
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFFECECEC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star_rounded,
                                  color: isGradeB
                                      ? const Color(0xFFFFD700)
                                      : Colors.grey),
                              const Text(
                                'Grade B',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              isGradeA = false;
                              isGradeB = false;
                              isGradeC = true;
                              grade = 'C';
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFFECECEC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star_rounded,
                                  color: isGradeC
                                      ? const Color(0xFFFFD700)
                                      : Colors.grey),
                              const Text(
                                'Grade C',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: SizedBox(
                    width: double.infinity,
                    height: 750,
                    child: StreamBuilder(
                        stream: db
                            .collection('Product')
                            .where('categories', isEqualTo: widget.category)
                            .where('grade', isEqualTo: grade)
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const CircularProgressIndicator(
                                color: Colors.red);
                          }
                          return GridView.builder(
                            itemCount: snapshot.data!.docs.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              // mainAxisSpacing: 30.0
                            ),
                            itemBuilder: (context, index) {
                              // if(product[index].grade == 'A'){
                              return Padding(
                                padding: const EdgeInsets.only(
                                    right: 8.0, top: 10.0),
                                child: InkWell(
                                  onTap: () {
                                    id = snapshot.data!.docs[index]
                                        ['id_product'];
                                    // Navigator.pushNamed(context, '/DetailProduct', arguments: id);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailProductScreen(
                                                    product: id,
                                                    price: snapshot.data!
                                                        .docs[index]['Price']
                                                        .toString())));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFECECEC),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: const Align(
                                                alignment: Alignment.topRight,
                                                child: Icon(
                                                    Icons.favorite_outline)),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            child: Image.network(snapshot.data!
                                                .docs[index]['urlImage'][0]),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        snapshot.data!.docs[index]['Name'],
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                              // return Container();
                            },
                          );
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
