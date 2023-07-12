import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice App",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Dice App")),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Image.asset(
              "assets/$diceNumber.PNG",
              // height: 100,
              // width: 100,
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: changeDice,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Roll",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
