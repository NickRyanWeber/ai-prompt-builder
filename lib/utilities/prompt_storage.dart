import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PromptStorage {
  Future<void> savePrompt(String prefix, String prompt, String suffix) async {
    final prefs = await SharedPreferences.getInstance();
    final prompts = prefs.getStringList('prompts') ?? [];
    final promptObject = {
      'date': DateTime.now().toIso8601String(),
      'prefix': prefix,
      'prompt': prompt,
      'suffix': suffix,
    };
    prompts.add(jsonEncode(promptObject));
    await prefs.setStringList('prompts', prompts);
  }

  Future<List<Map<String, dynamic>>> getPrompts() async {
    final prefs = await SharedPreferences.getInstance();
    final prompts = prefs.getStringList('prompts') ?? [];
    return prompts
        .map((prompt) => jsonDecode(prompt) as Map<String, dynamic>)
        .toList();
  }
}
