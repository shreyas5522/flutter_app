import 'package:flutter/material.dart';
import 'package:flutter_app/components/appbar.dart';

void main() {
  runApp(MyApp());
}

List<String> listt = ['All', 'Active', 'Completed', 'Cancelled'];

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildMyAppBar(),
        body: Column(
          children: [
            SizedBox(height: 8), // Add some space between AppBar and the list
            Center(
              child: Container(
                padding: EdgeInsets.all(8),
                height:
                    50, // Set the height of the container according to your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listt.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action here
                      },
                      child: Text(listt[index]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
