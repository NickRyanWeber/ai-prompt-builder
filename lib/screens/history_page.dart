import 'package:aipromptgenerator/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late Future<List<String>> _promptsFuture;

  @override
  void initState() {
    super.initState();
    _promptsFuture = _getPrompts();
  }

  Future<List<String>> _getPrompts() async {
    final prefs = await SharedPreferences.getInstance();
    // Replace 'prompts' with the key you use to store your prompts
    List<String> prompts = prefs.getStringList('prompts') ?? [];
    return prompts.reversed
        .toList(); // reverse the list to show newest prompts first
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      drawer: const MyDrawer(),
      body: FutureBuilder<List<String>>(
        future: _promptsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final prompt = snapshot.data![index];
                final concatenatedPrompt = `${prompt['prefix']}${prompt['prompt']}${prompt['suffix']}}`;

                return ListTile(
                  title: Text(concatenatedPrompt),
                );
              },
            );
          }
        },
      ),
    );
  }
}
