import 'package:flutter/material.dart';
import '../components/my_drawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: MyDrawer(),
      body: Center(child: Text('Settings Under Construction')),
    );
  }
}
