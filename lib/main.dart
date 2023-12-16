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
      title: 'AI Prompt Builder',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MidjourneyPage(),
        '/midjourney': (context) => const MidjourneyPage(),
        '/chatgpt': (context) => ChatGPTPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
