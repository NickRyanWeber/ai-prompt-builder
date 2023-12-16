import 'package:aipromptgenerator/components/prompt_section.dart';
import 'package:flutter/material.dart';

import '../components/my_drawer.dart';
import '../components/responsive_layout.dart';

class MidjourneyPage extends StatelessWidget {
  const MidjourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Midjourney')),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ResponsiveLayout(
                child: Center(child: PromptSection(prefix: '/imagine prompt:')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
