import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {

  var db = FirebaseFirestore.instance;
  var grade = 'grade';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: StreamBuilder(
          stream: db.collection('Product').snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData){
              return Text('Loading...');
            }
            // return ListView(
            //   children: snapshot.data!.docs.where((element) => element['grade'] == 'B').map((DocumentSnapshot document){
            //     // snapshot.data!.docs.map((DocumentSnapshot document){
            //       return ListTile(
            //         title: Text(document['name']),
            //       );
            //     }).toList(),
            // );
            return ListView.builder(
              itemCount: snapshot.data!.docs.where((element) => element["id"] == 'Ns0usYE7AsVZEyA5cD2H').length,
              itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Text(
                        snapshot.data!.docs[index]['Name'],
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
              },
            );
          },
        ),
      )
    );
  }
}

