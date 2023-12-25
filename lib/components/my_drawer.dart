import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Midjourney'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/midjourney');
            },
          ),
          ListTile(
            title: const Text('ChatGPT'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/chatgpt');
            },
          ),
          ListTile(
            title: const Text('History'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/history');
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
