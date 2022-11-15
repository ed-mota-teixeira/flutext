import 'package:flutext/models/text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final tCubit = context.watch<TextCubit>();
    final snack = ScaffoldMessenger.of(context);

    return IconButton(
        onPressed: () async {
          if (tCubit.state.isEmpty) {
            snack.showSnackBar(const SnackBar(content: Text('Empty text')));
            return;
          }

          Clipboard.setData(ClipboardData(text: tCubit.state)).then((_) {
            snack.showSnackBar(const SnackBar(content: Text('Text copied to clipboard')));
          }).catchError((e) {
            snack.showSnackBar(SnackBar(content: Text(e.toString())));
          });
        },
        icon: const Icon(Icons.copy));
  }
}
