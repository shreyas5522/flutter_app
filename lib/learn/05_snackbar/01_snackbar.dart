import 'package:flutter/material.dart';

class SnackBarr extends StatelessWidget {
  const SnackBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              
              action: SnackBarAction(label: 'Undo', onPressed: () {}),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              backgroundColor: Colors.amber,
              duration: const Duration(milliseconds: 3000),
              content: Text("This is a snackbar"));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
