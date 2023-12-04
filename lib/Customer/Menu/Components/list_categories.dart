import 'package:flutter/material.dart';
import 'package:varuna/Customer/Models/categories_models.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({Key? key}) : super(key: key);

  @override
  State<ListCategories> createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {

  String category = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  category = categories[index].nama!;
                  Navigator.pushNamed(context, '/ProductByCategories', arguments: category);
                });
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
                    child: categories[index].icon,
                  ),
                  Text(
                    '${categories[index].nama}',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
