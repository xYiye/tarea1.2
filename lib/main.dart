import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double counter = 10;

  void sumar() {
    setState(() {
      counter += 2.0;
    });
  }

  void restar() {
    setState(() {
      counter -= 2;
    });
  }

  void multiplicar() {
    setState(() {
      counter *= 2;
    });
  }

  void dividir() {
    setState(() {
      counter /= 2;
    });
  }

  void restablecer() {
    setState(() {
      counter = 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarea1.2 Felix Deras'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Text(
            'Contador: $counter',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 20),
            FloatingActionButton(
              onPressed: sumar,
              child: Icon(Icons.add),
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(height: 5),
            FloatingActionButton(
              onPressed: restar,
              child: Icon(Icons.remove),
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(height: 5),
            FloatingActionButton(
              onPressed: multiplicar,
              child: Icon(Icons.clear),
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(height: 5),
            FloatingActionButton(
              onPressed: dividir,
              child: Text('÷'),
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(height: 5),
            FloatingActionButton(
              onPressed: restablecer,
              child: Text('RESET'),
              backgroundColor: Colors.orangeAccent,
              foregroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
