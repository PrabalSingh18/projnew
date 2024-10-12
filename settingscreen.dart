import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Notifications'),
            value: true,
            onChanged: (bool value) {
              // Implement notification settings
            },
          ),
          SwitchListTile(
            title: Text('Dark Theme'),
            value: false,
            onChanged: (bool value) {
              // Implement theme switching
            },
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {
              // Show About Us information
            },
          ),
          ListTile(
            title: Text('Contact'),
            onTap: () {
              // Show Contact information
            },
          ),
        ],
      ),
    );
  }
}
