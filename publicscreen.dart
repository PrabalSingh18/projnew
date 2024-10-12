import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Daily Streak: 7 days'),
            SizedBox(height: 16),
            Text('User Name: John Doe'),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Start Quiz'),
              onPressed: () {
                // Implement quiz functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
