import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String title;
  final String inkWellTitle;
  const AppDoubleTextWidget({Key? key, required this.title, required this.inkWellTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headlineStyle2,
        ),
        InkWell(
            onTap: (){

            },
            child: Text(
              inkWellTitle,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ))
      ],
    );
  }
}
