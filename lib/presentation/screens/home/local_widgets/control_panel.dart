import 'package:flutter/material.dart';
import 'package:pocket_warehouse/presentation/extensions/space_xy.dart';

class ControlPanel extends StatefulWidget {
  const ControlPanel({super.key});

  @override
  State<ControlPanel> createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;

    return Column(
      children: [
        (deviceSize.height / 7).spaceY,
        Container(
          margin: EdgeInsets.symmetric(horizontal: deviceSize.width * .13),
          width: deviceSize.width,
          height: deviceSize.width * .35,
          padding: EdgeInsets.symmetric(
            horizontal: deviceSize.width * .05,
            vertical: deviceSize.width * .045,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // animatedHomeButton1(width),
              SizedBox(
                width: 5,
              ),
              // animatedHomeButton2(width),
              SizedBox(
                width: 5,
              ),
              // animatedHomeButton3(width),
            ],
          ),
        ),
      ],
    );
  }
}
