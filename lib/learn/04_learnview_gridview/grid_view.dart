import 'package:flutter/material.dart';

class Grid_View extends StatefulWidget {
  const Grid_View({super.key});

  @override
  State<Grid_View> createState() => _Grid_ViewState();
}

class _Grid_ViewState extends State<Grid_View> {
  List<String> fruits = ['Orange','Apple','Banana' , 'Mango','Orange','Apple','Banana' , 'Mango'];

  Map fruit_person = {
      'fruits': ['Orange','Apple','Banana' , 'Mango'],
      'names': ['Oro', 'Apie', 'Bana', 'Mang']
    };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
          backgroundColor: Colors.amber,
        ),

        body: Container(
          child: Center(
            // child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            // //crossAxisSpacing: 20, 
            // //mainAxisSpacing: 20
            // ),
            // children: [
            //   Card(
            //     child: Text("Orange"),
            //   ),
            //                 Card(
            //     child: Text("Orange"),
            //   ),
            //   Card(
            //     child: Text("Orange"),
            //   ),
            //   Card(
            //     child: Text("Orange"),
            //   ),

            // ],
            // ),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, ), 
            itemCount: fruits.length,
            itemBuilder: ((context, index) {
              return Card (
                child: Center(child: 
                Text(fruits[index]),
                ),
              );
            })),
          ),
        ),
      ),
    );
  }
}