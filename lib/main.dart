import 'package:flutter/material.dart';
import '/screens/midjourney_page.dart';
import '/screens/chatgpt_page.dart';
import '/screens/settings_page.dart';
import '/screens/history_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Prompt Builder',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MidjourneyPage(),
        '/midjourney': (context) => const MidjourneyPage(),
        '/chatgpt': (context) => const ChatGPTPage(),
        '/settings': (context) => const SettingsPage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
