import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container And Sized'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(20),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, spreadRadius: 5, color: Colors.yellow)
                ]),
            child: const Center(
              child: Text('HELLO', style: TextStyle(fontSize: 20)),
            ),
          ),
        ));
  }
}
