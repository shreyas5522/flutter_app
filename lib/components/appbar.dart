import 'package:flutter/material.dart';

AppBar buildMyAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    leading: Icon(
      Icons.timelapse,
      size: 25,
    ),
    title: const Text("Testing App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        )),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8),
        child: Icon(Icons.logout, size: 25, color: Colors.black),
      ),
    ],
  );
}
