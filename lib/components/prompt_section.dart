import 'package:aipromptgenerator/utilities/prompt_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PromptSection extends StatefulWidget {
  const PromptSection({Key? key, this.prefix, this.suffix}) : super(key: key);

  final String? prefix;
  final String? suffix;

  @override
  PromptSectionState createState() => PromptSectionState();
}

class PromptSectionState extends State<PromptSection> {
  late TextEditingController _textEditingController;
  String _prompt = '';

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.text = '';
    _prompt =
        '${widget.prefix ?? ''}${_textEditingController.text}${widget.suffix ?? ''}';
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _copySavePrompt() {
    Clipboard.setData(ClipboardData(text: _prompt));
    _savePrompt();
  }

  void _savePrompt() {
    PromptStorage().savePrompt(
      widget.prefix ?? '',
      _textEditingController.text,
      widget.suffix ?? '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _textEditingController,
          textAlign: TextAlign.center,
          minLines: 1,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: 'Enter text',
            filled: true,
            fillColor: Colors.grey[200], // Light grey background color
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black, width: 1.0), // Thin black border
            ),
          ),
          onChanged: (value) {
            setState(() {
              _prompt =
                  '${widget.prefix ?? ''}${_textEditingController.text}${widget.suffix ?? ''}';
            });
          },
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          alignment: WrapAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(_prompt),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          onPressed: _copySavePrompt,
                          child: const Text('Copy/Save Prompt'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Full Prompt'),
            ),
            ElevatedButton(
              onPressed: _savePrompt,
              child: const Text('Save Prompt'),
            ),
            ElevatedButton(
              onPressed: _copySavePrompt,
              child: const Text('Copy/Save Prompt'),
            ),
          ],
        ),
      ],
    );
  }
}
