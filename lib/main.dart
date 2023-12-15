import 'package:flutter/material.dart';
import '/screens/midjourney_page.dart';
import '/screens/chatgpt_page.dart';
import '/screens/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SPA',
      initialRoute: '/',
      routes: {
        '/': (context) => MidjourneyPage(),
        '/midjourney': (context) => MidjourneyPage(),
        '/chatgpt': (context) => ChatGPTPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
