import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text(
              "This Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.menu,
              weight: 700,
              color: Colors.white,
            ),
          ),
          body: Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(30),
              child: const Text(
                "Hello World",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              // child: const Icon(
              //   Icons.favorite,
              //   color: Colors.white,
              //   size: 40,
              // ),
            ),
          ),
        ));
  }
}
