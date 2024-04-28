import 'package:flutter/material.dart';
// import 'package:flutter_app/learn/04_learnview_gridview/list_view.dart';
import 'package:flutter_app/learn/04_learnview_gridview/grid_view.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: List_View(),
      home: Grid_View(),
    );
  }
}
