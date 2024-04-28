import 'package:flutter/material.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
    List<String> fruits = ['Orange','Apple','Banana' , 'Mango'];
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
          title: Text("List View"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Center(
            child: ListView.builder(
              itemCount: fruits.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(
                    onTap: (){

                      print(fruit_person['fruits'][index]);
                    },
                    leading: Icon(Icons.person),
                    title: Text(fruit_person['fruits'][index]),
                    subtitle: Text(fruit_person['names'][index]),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
      
    );
  }
}
