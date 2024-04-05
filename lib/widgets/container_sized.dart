import "package:flutter/material.dart";

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container and Sizedbox'),
          backgroundColor: Colors.deepOrange, // Set the background color here
        ),
        body: Center(
            child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Hello World', style: TextStyle(fontSize: 20)),
        )
            // SizedBox(height: 50, width: 50, child: Text("Hello")),
            ));
  }
}
