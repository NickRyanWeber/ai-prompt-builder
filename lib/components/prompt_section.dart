import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PromptSection extends StatefulWidget {
  final String prefix;
  final String suffix;

  PromptSection({required this.prefix, required this.suffix});

  @override
  _PromptSectionState createState() => _PromptSectionState();
}

class _PromptSectionState extends State<PromptSection> {
  late TextEditingController _textEditingController;
  late String _prompt;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _prompt = '';
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _copyPrompt() {
    final prompt =
        '${widget.prefix}${_textEditingController.text}${widget.suffix}';
    Clipboard.setData(ClipboardData(text: prompt));
  }

  @override
  Widget build(BuildContext context) {
    _prompt = '${widget.prefix}${_textEditingController.text}${widget.suffix}';

    return Column(
      children: [
        TextField(
          controller: _textEditingController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Enter text',
          ),
        ),
        SizedBox(height: 16),
        Text(
          _prompt,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _copyPrompt,
          child: Text('Copy Prompt'),
        ),
      ],
    );
  }
}
