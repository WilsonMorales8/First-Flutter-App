import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {

  //variables
  int _count = 0;

  //methods
  void _add() {
    setState(() {
      _count ++;
    });
  }

  void _subtract() {
    setState(() {
      _count --;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        centerTitle: true,
        title: const Text('Counter',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Count :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('$_count',
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        children: [
          Positioned(
            right: 30,
            bottom: 10,
            width: 80,
            height: 80,
            child: FloatingActionButton(
                onPressed: () {
                  _add();
                },
                backgroundColor: Colors.red[700],
                child: const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                )
            ),
          ),
          Positioned(
            left: 30,
            bottom: 10,
            width: 80,
            height: 80,
            child: FloatingActionButton(
              onPressed: () {
                _subtract();
              },
              backgroundColor: Colors.red[700],
              child: const Icon(
                Icons.remove,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
