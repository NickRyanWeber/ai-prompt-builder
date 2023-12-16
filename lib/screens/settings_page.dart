import 'package:flutter/material.dart';
import '../components/my_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const MyDrawer(),
      body: const Center(child: Text('Settings Under Construction')),
    );
  }
}
