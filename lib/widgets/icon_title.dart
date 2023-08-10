import 'package:dexian/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IconWithTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;
  final Function()? onPressed;

  const IconWithTitle({
    Key? key,
    required this.title,
    required this.icon,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(icon), onPressed: () {}, color: AppColors.iconDark),
        Text(title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.iconDark,
                fontWeight: FontWeight.w500,
                fontSize: 16)),
      ],
    );
  }
}
