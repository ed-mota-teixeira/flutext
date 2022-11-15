import 'package:flutext/widgets/copy_button.dart';
import 'package:flutext/widgets/result_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          title: const Text('Result'),
          actions: const [
            CopyButton(),
          ],
        ),
        body: const ResultWidget(),
      ),
    );
  }
}
