import 'package:flutter/material.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({super.key});

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {


//controllers
final TextEditingController _myController1 = TextEditingController();
final TextEditingController _myController2 = TextEditingController();
final TextEditingController _myController3 = TextEditingController();

//Message
String _confirmation = "";

//Method
void _save (String x, String y, String z){
  try {
    List<int> storage = [];
    storage.add(int.parse(x));
    storage.add(int.parse(y));
    storage.add(int.parse(z));

    setState(() {
      _confirmation = "Information Saved";
    });
  } catch (e) {
    setState(() {
      _confirmation = 'Error: Fill all the required information';
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Payment Method',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25,0,25,220),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,30),
                child: TextField(
                  controller: _myController1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Card Number :',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,30),
                child: TextField(
                  controller: _myController2,
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Exp Date :',
                  ),
                ),
              ),
              TextField(
                controller: _myController3,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'CVC :',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _save(_myController1.text, _myController2.text, _myController3.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Center(
                      child: Text('Confirm',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(_confirmation,
                style: const TextStyle(
                    fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
