import 'package:flutter/material.dart';
import 'package:flutter_app/learn/05_snackbar/01_snackbar.dart';
// import 'package:flutter_app/learn/03_maps/maps.dart';
// import 'package:flutter_app/learn/04_learnview_gridview/list_view.dart';
// import 'package:flutter_app/learn/04_learnview_gridview/garid_view.dart';

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
      theme: ThemeData.dark(

      ),
      home: SnackBarr(),
    );
  }
}
