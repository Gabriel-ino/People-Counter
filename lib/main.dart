import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void decrement() {
    setState(() {
      counter--;
      });

  }

  void increment() {
    setState(() {
      counter++;
      });

  }

  bool get isEmpty => counter <= 0;
  bool get isFull => counter >= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("People counter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? "Entry not permitted":"Entry permitted",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: isFull ? Colors.red : Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(36),
            child: Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 90,
                color: isFull ? Colors.red : Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty ? Colors.white54.withOpacity(0.2) : Colors.white54,
                  fixedSize: const Size(32, 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Leaved",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: isFull ? null : increment,
                style: TextButton.styleFrom(
                  backgroundColor: isFull ? Colors.white54.withOpacity(0.2) : Colors.white54,
                  fixedSize: const Size(32, 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Entered",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


