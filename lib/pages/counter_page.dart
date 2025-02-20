import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //Variables
  int counter = 0;

  //Methods
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
            Text("You pushed the button this $counter times, wau!"),

            //Counter value
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 40),
            ),

            //Button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            ),
          ],
        ),
      ),
    );
  }
}
