import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:varuna/Customer/Menu/detail_product_screen.dart';

class GridProduct extends StatefulWidget {

  const GridProduct({Key? key,}) : super(key: key);

  @override
  State<GridProduct> createState() => _GridProductState();
}

class _GridProductState extends State<GridProduct> {

  var db = FirebaseFirestore.instance;
  String id = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: StreamBuilder(
        stream: db.collection('Product').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator(color: Colors.red);
          }
          return GridView.builder(
            itemCount: snapshot.data!.docs.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              // mainAxisSpacing: 30.0
            ),
            itemBuilder: (context, index) {
              // if(product[index].grade == 'A'){
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 10.0),
                  child: InkWell(
                    onTap: () {
                      id = snapshot.data!.docs[index]['id_product'];
                        // Navigator.pushNamed(context, '/DetailProduct', arguments: id);
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailProductScreen(
                                    product: id,
                                    price: snapshot.data!.docs[index]['Price']
                                        .toString())));
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.favorite_outline)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Image.network(snapshot.data!.docs[index]['urlImage'][0]),
                            ),
                          ],
                        ),
                        Text(
                          snapshot.data!.docs[index]['Name'],
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              // return Container(); 
            },
          );
        }
      )
    );
  }
}
