import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Midjourney'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/midjourney');
            },
          ),
          ListTile(
            title: Text('ChatGPT'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/chatgpt');
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
