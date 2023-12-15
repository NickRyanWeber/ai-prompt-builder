import 'package:flutter/material.dart';
import '../components/my_drawer.dart';

class MidjourneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Midjourney')),
      drawer: MyDrawer(),
      body: Center(child: Text('Midjourney Under Construction')),
    );
  }
}
