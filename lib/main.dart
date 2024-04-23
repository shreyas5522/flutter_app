import 'package:flutter/material.dart';
import 'package:flutter_app/components/appbar.dart';

void main() {
  runApp(MyApp());
}

List<String> listt = ['All', 'Active', 'Completed', 'Cancelled'];

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: buildMyAppBar(),
          body: Stack(
            alignment: Alignment.center,
            children: [
              //big box
              Container(
                height: 300,
                width: 300,
                color: Colors.amber,
              ),

              // medium
              Container(
                height: 200,
                width: 200,
                color: Colors.orangeAccent[200],
              ),
              // small

              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
            ],
          )),
    );
  }
}
