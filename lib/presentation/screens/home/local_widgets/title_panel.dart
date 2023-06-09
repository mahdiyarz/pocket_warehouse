import 'package:flutter/material.dart';
import 'package:pocket_warehouse/presentation/extensions/space_xy.dart';

import '../../../resources/my_style.dart';

class TitlePanel extends StatelessWidget {
  final String title;
  final String? subTitle;
  const TitlePanel({
    required this.title,
    this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: width * .52,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          15.spaceY,
          Text(
            title,
            style: AppTextStyle.getBoldStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 19,
            ),
          ),
          3.spaceY,
          Text(
            subTitle ?? '',
            style: AppTextStyle.getMediumStyle(
              color: Theme.of(context)
                  .colorScheme
                  .onPrimaryContainer
                  .withOpacity(.7),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
