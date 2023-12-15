import 'package:flutter/material.dart';
import '../components/my_drawer.dart';

class ChatGPTPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChatGPT')),
      drawer: MyDrawer(),
      body: Center(child: Text('ChatGPT Under Construction')),
    );
  }
}
