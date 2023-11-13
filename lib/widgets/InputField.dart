import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final Function(String) onTextChanged;

  const InputField({
    Key? key,
    required this.hintText,
    required this.onTextChanged,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: colors["white"],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: textController,
                textCapitalization: TextCapitalization.words,
                style: TextStyle(
                  color: colors["purple-text"],
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                widget.onTextChanged(textController.text);
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ));
  }
}
