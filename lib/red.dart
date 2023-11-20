import 'package:flutter/material.dart';
import 'widgets.dart';

class RedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeWidget(text: 'Red Screen!'),
            SizedBox(
              height: 16,
            ),
            ImageWidget(imagePath: 'images/red.jpg'),
            SizedBox(
              height: 16,
            ),
            CommentTextField(),
            SizedBox(
              height: 16,
            ),
            SaveButton(),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
