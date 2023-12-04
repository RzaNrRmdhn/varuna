import 'package:flutter/material.dart';
// import '../Models/product_models.dart';

class OrderProductScreen extends StatefulWidget {

  const OrderProductScreen({super.key});

  @override
  State<OrderProductScreen> createState() => _OrderProductScreenState();
}

class _OrderProductScreenState extends State<OrderProductScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
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
                        'CheckOut',
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
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}