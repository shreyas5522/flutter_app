import 'package:flutter/material.dart';

class MapsFlut extends StatefulWidget {
  const MapsFlut({super.key});

  @override
  State<MapsFlut> createState() => _MapsFlutState();
}

class _MapsFlutState extends State<MapsFlut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Background App"),),
      ),
    );
  }
}