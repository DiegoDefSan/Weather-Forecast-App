import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;

  const InputField({
    Key? key,
    required this.hintText,
    required this.textController,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
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
                controller: widget.textController,
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
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ));
  }
}
