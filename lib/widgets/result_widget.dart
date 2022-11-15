import 'package:flutext/widgets/output_widget.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          SizedBox(height: 24),
          OutputWidget(),
        ],
      ),
    );
  }

}