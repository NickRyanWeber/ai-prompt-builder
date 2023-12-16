import 'package:flutter/material.dart';
import '../components/my_drawer.dart';

class ChatGPTPage extends StatelessWidget {
  const ChatGPTPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatGPT')),
      drawer: const MyDrawer(),
      body: const Center(child: Text('ChatGPT Under Construction')),
    );
  }
}
