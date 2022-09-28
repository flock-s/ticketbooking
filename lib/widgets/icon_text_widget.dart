import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8), horizontal: AppLayout.getWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF),),
          Gap(AppLayout.getWidth(20)),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}