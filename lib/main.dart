import 'package:flutter/material.dart';
import 'package:flutter_app/components/appbar.dart';

void main() {
  runApp(MyApp());
}

List<String> listt = ['All', 'Active', 'Completed', 'Cancelled'];

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  void userClicked() {
    print("User Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: buildMyAppBar(),
            body: Center(
                child: GestureDetector(
              onTap: userClicked,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFA405B9),
                ),
                child: const Center(
                  child: Text(
                    "Click Here",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
            ))));
  }
}
