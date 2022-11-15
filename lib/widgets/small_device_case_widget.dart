import 'package:flutext/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class SmallDeviceCase extends StatelessWidget {
  const SmallDeviceCase({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.all(24),
      child: InputWidget(),
    );
  }
}
