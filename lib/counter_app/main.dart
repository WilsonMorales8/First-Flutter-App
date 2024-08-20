import 'package:flutter/material.dart';
import 'calculator.dart';
import 'timer.dart';
import 'counter.dart';
import 'home.dart';
import 'account.dart';
import 'monetization.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/accountpage': (context) => const AccountPage(),
        '/moneypage': (context) => const MoneyPage(),
        '/counterpage': (context) => const CounterPage(),
        '/calculatorpage': (context) => const CalcPage(),
        '/timerpage': (context) => const TimerPage(),
      },
    );
  }
}