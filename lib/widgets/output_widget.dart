import 'package:flutext/models/text_cubit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OutputWidget extends StatelessWidget {
  const OutputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Expanded(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(24),
        child: Container(
          width: double.maxFinite,
          height: h - h / 7,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white70),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              //scrollable Text - > wrap in SingleChildScrollView -> wrap that in Expanded
              child: Padding(
                padding: const EdgeInsetsDirectional.all(12),
                child: BlocBuilder<TextCubit, String>(builder: (context, state) {
                  return SelectableText(
                    state
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
