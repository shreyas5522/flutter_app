import 'package:flutter/material.dart';

class Dissmessiblle extends StatefulWidget {
  const Dissmessiblle({super.key});

  @override
  State<Dissmessiblle> createState() => _DissmessiblleState();
}

class _DissmessiblleState extends State<Dissmessiblle> {
  List<String> fruits = ['Orange', 'Banana', 'Mango', 'Apple', 'Grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: ((context, index) {
            final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar((SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.green,
                    )));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar((SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red,
                    )));
                  }
                },
                key: Key(fruit),
                //This is predifend Functionality
                 // - Background for start to end
                 // - Secondary Background color for End to start
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
