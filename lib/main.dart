import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESS THE NUMBER',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.lightBlue.shade50,
              //border: Border.all(width: 5.0, color: Colors.blue),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(2.0, 5.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/guess_logo.png',
                      width: 100,
                      height: 100,
                      //fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'GUESS',
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 50.0,
                        ),
                      ),
                      Text(
                        'THE NUMBER',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding:  EdgeInsets.all(32.0),
                child:  TextField(),
              ),
              ElevatedButton(onPressed: (){}, child: const Text('GUESS')),
            ],
          ),
        ),
      ),
    );
  }
}
