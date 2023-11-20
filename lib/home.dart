import 'package:flutter/material.dart';
import 'green.dart';
import 'red.dart';
import 'blue.dart';
import 'yellow.dart';
import 'widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeWidget(text: 'Home Screen!'),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GreenScreen()),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text('Green'),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RedScreen()),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text('Red'),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlueScreen()),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: Text('Blue'),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YellowScreen()),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
              child: Text('Yellow'),
            ),
          ],
        ),
      ),
    );
  }
}
