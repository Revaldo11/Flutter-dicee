import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple.shade400,
        appBar: AppBar(
          backgroundColor: Colors.purple.shade400,
          title: const Center(
            child: Text('Dice App'),
          ),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 4;

    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Tombol kiri di klik');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Tombol kanan di tap');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
