import 'package:flutter/material.dart';

class TextFieldThema extends StatelessWidget {
  ///This widget for text input with styled decoration

  /// Controller to manage text input
  final TextEditingController textController;

  /// Placeholder text when the input field is empty
  final String textHint;

  /// Label text displayed above the input field
  final String textLabel;

  const TextFieldThema({
    super.key,
    required this.textController,
    required this.textHint,
    required this.textLabel,
  });

  @override
  Widget build(BuildContext context) {
    return
    //TextField styled decoration
    TextField(
      controller: textController,
      decoration: InputDecoration(
        hintText: textHint,
        labelText: textLabel,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
