import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final VoidCallback onProfileTap;

  BottomNavBar({required this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: onProfileTap,
          ),
        ],
      ),
    );
  }
}
