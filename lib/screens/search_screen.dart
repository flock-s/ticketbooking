import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \nyou looking for?",
          style: Styles.headlineStyle1.copyWith(fontSize: AppLayout.getHeight(35)),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white
                    ),
                    child: Center(child: Text("Airline Tickets")),
                  ),
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent
                    ),
                    child: Center(child: Text("Hotels")),
                  )
                ],

              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color:const Color(0xFFF4F6FD)
              ),
            ),
          ),
          Gap(AppLayout.getHeight(24)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(12)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(12)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidth(10)),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
            ),
            child: Center(child: Text('Button', style: Styles.textStyle,)),
          )
        ],
      ),
    );
  }
}
