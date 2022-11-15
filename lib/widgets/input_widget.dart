import 'package:flutext/models/app_data.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      minLines: null,
      expands: true,
      keyboardType: TextInputType.multiline,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white70), //this has no effect
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white70), //this has no effect
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (s) {
        AppData().text = s;
      },
    );
  }
}
