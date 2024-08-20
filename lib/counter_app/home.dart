import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  //Counter
  void toCounter(BuildContext context){
    Navigator.pushNamed(context, '/counterpage');
  }

  //Calculator
  void toCalc(BuildContext context){
    Navigator.pushNamed(context, '/calculatorpage');
  }

  //Timer
  void toTimer(BuildContext context){
    Navigator.pushNamed(context, '/timerpage');
  }

  //Account
  void toAccount(BuildContext context){
    Navigator.pushNamed(context, '/accountpage');
  }

  //Monetization
  void toMoney(BuildContext context){
    Navigator.pushNamed(context, '/moneypage');
  }


  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Center(
                      child: Text('Premium + +',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    content: SizedBox(
                      height: 200,
                      width: 300,
                      child: Column(
                        children: [
                          const Text(
                            'Features:'
                            '\n- AD free'
                            '\n- AI assistant'
                            '\nFor the low price of \$9.99',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: SizedBox(
                              height: 45,
                              width: 160,
                              child: ElevatedButton(
                                onPressed: (){
                                  toMoney(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: const Text('BUY NOW',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.monetization_on,
              size: 32,
              color: Colors.black,
            ),
          ),
        ],
      ),
        drawer: Drawer(
          backgroundColor: Colors.black87,
          child: Column(
            children: [
              const DrawerHeader(
                child: Icon(
                  Icons.android,
                  size: 150,
                  color: Colors.lightGreen,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const ListTile(
                        title: Text('ListView',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        leading: Icon(Icons.arrow_circle_down,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ListTile(
                      title: const Text('Account(Functional)',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      leading: const Icon(
                        Icons.account_circle,
                        color: Colors.lightGreen,
                      ),
                      onTap: (){
                        toAccount(context);},
                    ),
                    const ListTile(
                        title: Text('Home',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                        leading: Icon(Icons.home,
                          color: Colors.lightGreen,
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.settings,
                          color: Colors.lightGreen,
                        ),
                        title: Text('Settings',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('Alarm',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('01',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('02',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('03',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('04',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('05',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('06',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('07',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('08',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('09',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('10',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add_alarm,
                          color: Colors.lightGreen,
                        ),
                        title: Text('11',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    const ListTile(
                        leading: Icon(Icons.add,
                          color: Colors.lightGreen,
                        ),
                        title: Text('12',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                  ],
                )
              ),
            ],
          ),
        ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                //lambda                         //no lambda
                onTap: () => toCounter(context), //() {toCounter(context);},
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 413,
                        color: Colors.brown[800],
                        child: const Center(
                          child: Text('Counter',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => toCalc(context),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 413,
                        color: Colors.yellow[50],
                        child: const Center(
                          child: Text('Calculator',
                            style: TextStyle(
                            fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => toTimer(context),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 413,
                        color: Colors.pink[100],
                        child: const Center(
                          child: Text('Timer',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
