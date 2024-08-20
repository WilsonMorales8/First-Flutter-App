import 'package:flutter/material.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: const Text('Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.monetization_on,
            size: 35,
            color: Colors.black,
          )
        ],
      ),
      body: const Center(child: Text('Calculator Page(Incomplete)')),
    );
  }
}
