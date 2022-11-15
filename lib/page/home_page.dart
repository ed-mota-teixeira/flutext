import 'package:flutext/widgets/copy_button.dart';
import 'package:flutext/widgets/menu_bar.dart';
import 'package:flutext/widgets/output_widget.dart';
import 'package:flutext/widgets/small_device_case_widget.dart';
import 'package:flutter/material.dart';

const kSmallDeviceW = 800;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const MenuBar(),
          Flexible(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < kSmallDeviceW) {
                return const SmallDeviceCase();
              } else {
                return Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(padding: EdgeInsetsDirectional.only(end: 24), child: CopyButton()),
                    ),
                    Expanded(
                      child: Row(
                        children: const [
                          Expanded(child: SmallDeviceCase()),
                          OutputWidget(),
                        ],
                      ),
                    ),
                  ],
                );
              }
            }),
          ),
        ]),
      ),
    );
  }
}
