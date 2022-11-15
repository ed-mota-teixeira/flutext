import 'package:flutext/models/app_data.dart';
import 'package:flutext/models/text_cubit.dart';
import 'package:flutext/routes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionOption extends StatelessWidget {
  final String text;
  final VoidCallback action;
  final bool newPage;

  const ActionOption({super.key, required this.text, required this.action, this.newPage = true});

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);

    return FilterChip(
        label: Text(text),
        onSelected: (b) {
          if (b) {
            context.read<TextCubit>().setText(AppData().text);
            action();
            if (newPage) nav.pushNamed(kResultRoute);
          }
        });
  }
}
