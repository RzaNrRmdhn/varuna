import 'package:flutter/material.dart';
import 'package:varuna/Customer/Models/product_models.dart';

class ListOrderScreen extends StatelessWidget {
  const ListOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
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
                        'List Order',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(color: Colors.grey),
              Expanded(
                flex: 10,
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      final Product products = product[index];
                      return InkWell(
                        onTap: (){},
                        child: ListTile(
                          leading: Image.asset("${products.image}"),
                          title: Text('Item ${products.name}'),
                          subtitle: Text('Item ${products.description}'),
                          contentPadding: const EdgeInsets.all(14.0),
                        ),
                      );
                    },
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}