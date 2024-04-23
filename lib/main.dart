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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.green,
              ),
              label: '', // Hide label
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding:
                    EdgeInsets.zero, // Remove padding explicitly (optional)
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.history,
                      size: 28,
                      color: Colors.green,
                    ),
                    Text(
                      'Ride History',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
              ),
              label: '', // Hide label (optional)
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.green,
              ),
              label: '', // Hide label
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
                height: 8), // Add some space between AppBar and the list
            Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                height:
                    50, // Set the height of the container according to your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listt.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
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
