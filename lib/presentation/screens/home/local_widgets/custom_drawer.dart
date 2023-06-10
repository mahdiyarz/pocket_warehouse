import 'package:flutter/material.dart';

import '../../../extensions/space_xy.dart';
import '../../../resources/my_style.dart';
import 'custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: width * .13,
          vertical: width * .2,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(35),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 10,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    maxRadius: 20,
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withOpacity(.6),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      (width * .2).spaceY,
                      CustomDrawerTile(
                        onTap: () {},
                        title: 'راهنمای تصویری',
                        titleIcon: Icons.video_collection,
                        leftIcon: Icons.arrow_forward_ios_rounded,
                      ),
                      CustomDrawerTile(
                        onTap: () {},
                        title: 'بازیابی اطلاعات',
                        titleIcon: Icons.data_exploration_rounded,
                        leftIcon: Icons.arrow_forward_ios_rounded,
                      ),
                      CustomDrawerTile(
                        onTap: () {},
                        title: 'پشتیبانی از اطلاعات',
                        titleIcon: Icons.backup_rounded,
                        leftIcon: Icons.arrow_forward_ios_rounded,
                      ),
                      CustomDrawerTile(
                        onTap: () {},
                        title: 'اطلاعات بیشتر',
                        titleIcon: Icons.question_mark_rounded,
                        leftIcon: Icons.arrow_forward_ios_rounded,
                      ),
                    ],
                  ),
                  35.spaceY,
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      children: [
                        Text(
                          'Designed and develope by Mahdiyar Arbabzi',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.getLightStyle(
                              fontSize: 10,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer
                                  .withOpacity(.6)),
                        ),
                        Text(
                          'm.arbabzi@gmail.com',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.getLightStyle(
                              fontSize: 10,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer
                                  .withOpacity(.6)),
                        ),
                        8.spaceY,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
