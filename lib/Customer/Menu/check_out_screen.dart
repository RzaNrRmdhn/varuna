import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.red),
                ),
                Expanded(
                  flex: 6,
                  child: Container(color: Colors.blue),
                ),
                Expanded(
                  child: Container(color: Colors.green),
                ),
              ],
            ),
          ),
        ),
    );
    
  }
}