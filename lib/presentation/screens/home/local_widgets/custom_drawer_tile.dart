import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  final Function() onTap;
  final String title;
  final IconData titleIcon;
  final IconData leftIcon;
  const CustomDrawerTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.titleIcon,
    required this.leftIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 3),
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  maxRadius: 22,
                  child: Icon(
                    titleIcon,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(leftIcon,
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(.7)),
          ],
        ),
      ),
    );
  }
}
