import 'package:flutter/material.dart';
import 'package:money_app_v1/conversion_screen.dart';
import 'package:money_app_v1/transactions_screen.dart';

class MoneyApp extends StatefulWidget {
  const MoneyApp({
    super.key,
  });

  @override
  State<MoneyApp> createState() => _MoneyAppState();
}

class _MoneyAppState extends State<MoneyApp> {
  var activeScreen = 'conversion-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'transactions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Color.fromARGB(255, 240, 237, 237),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'conversion-screen'
              ? ConversionScreen(switchScreen)
              : const TransactionsScreen(),
        ),
      ),
    );
  }
}
