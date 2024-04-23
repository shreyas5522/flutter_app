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
              label: '', // Set label to an empty string to hide it
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsetsGeometry
                    .infinity, // Remove padding for full space
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                // Set the background color here
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
              label: '', // Set label to empty string (optional)
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.green,
              ),
              label: '', // Set label to an empty string to hide it
            ),
          ],
        ),
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
            Column(
              // You can use Row or Column depending on your layout needs
              children: [Row()],
            ),
          ],
        ),
      ),
    );
  }
}
