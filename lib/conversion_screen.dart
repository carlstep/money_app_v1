import 'package:flutter/material.dart';

class ConversionScreen extends StatelessWidget {
  const ConversionScreen(
    this.convertMoney, {
    super.key,
  });

  final void Function() convertMoney;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('This is the page for converting values'),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: convertMoney,
            // style: OutlinedButton.styleFrom(foregroundColor: Colors.white70),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Go To Transactions',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
