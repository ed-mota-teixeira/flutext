import 'package:flutext/models/text_cubit.dart';
import 'package:flutext/widgets/action_option.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const kSmallDeviceW = 800;

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width;
    final dividerColor = Theme.of(context).dividerColor;

    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
              child: ActionOption(
                text: 'Uppercase',
                action: () => context.read<TextCubit>().toUpper(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Lowercase',
                action: () => context.read<TextCubit>().toLower(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Remove accents',
                action: () => context.read<TextCubit>().convertDiacritics(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Remove numbers',
                action: () => context.read<TextCubit>().removeDigits(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Only numbers',
                action: () => context.read<TextCubit>().removeAlphabet(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Icon(Icons.circle, size: 8, color: dividerColor),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
              child: ActionOption(
                text: 'HTML template',
                action: () => context.read<TextCubit>().inHTML5Template(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Lorem Ipsum',
                action: () => context.read<TextCubit>().loremIpsum(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Icon(Icons.circle, size: 8, color: dividerColor),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
              child: ActionOption(
                text: 'Calculate SHA1',
                action: () => context.read<TextCubit>().calculateHash1(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Calculate SHA256',
                action: () => context.read<TextCubit>().calculateHash256(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: ActionOption(
                text: 'Calculate SHA512',
                action: () => context.read<TextCubit>().calculateHash512(),
                newPage: sizeW < kSmallDeviceW,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
