
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(335),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(15)),
      margin: EdgeInsets.only(right: AppLayout.getHeight(15), top :AppLayout.getHeight(15)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 1,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headlineStyle2,
          ),
          Gap(5),
          Text(
            "${hotel['destination']}",
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          Gap(5),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
