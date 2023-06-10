import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Pressed',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;

  void isBtn1Pressed() {
    setState(() {
      isPressed1 = true;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = false;
    });
  }

  void isBtn2Pressed() {
    setState(() {
      isPressed1 = false;
      isPressed2 = true;
      isPressed3 = false;
      isPressed4 = false;
    });
  }

  void isBtn3Pressed() {
    setState(() {
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = true;
      isPressed4 = false;
    });
  }

  void isBtn4Pressed() {
    setState(() {
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: isBtn1Pressed,
                child: NeuBtn(Icons.home, isPressed1),
              ),
              GestureDetector(
                onTap: isBtn2Pressed,
                child: NeuBtn(Icons.favorite, isPressed2),
              ),
              GestureDetector(
                onTap: isBtn3Pressed,
                child: NeuBtn(Icons.settings, isPressed3),
              ),
              GestureDetector(
                onTap: isBtn4Pressed,
                child: NeuBtn(Icons.favorite, isPressed4),
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget NeuBtn(IconData icons, bool pressed) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade300,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.shade700,
            offset: Offset(4.0, 4.0),
            blurRadius: 5,
            spreadRadius: 1,
            inset: pressed,
          ),
          BoxShadow(
            color: Colors.deepPurple.shade200,
            offset: Offset(-4.0, -4.0),
            blurRadius: 5,
            spreadRadius: 1,
            inset: pressed,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple.shade200,
            Colors.deepPurple.shade400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.9,
          ],
        ),
      ),
      child: Icon(
        icons,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
