import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
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
            child: Center(child: Text('Find Tickets', style: Styles.textStyle,)),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(title: 'Upcoming Flights',inkWellTitle: 'View all',),
          Gap(AppLayout.getHeight(16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(410),
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8),horizontal: AppLayout.getWidth(8)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  color: Colors.white
                ),
                width: size.width*.42,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% Discount on the early booking of flight. Don't miss", style: Styles.headlineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width *0.44,
                        height: AppLayout.getHeight(180),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12),horizontal: AppLayout.getWidth(12)),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount \nfor Survey", style: Styles.headlineStyle2.copyWith(fontWeight:FontWeight.bold, color: Colors.white ),),
                            Gap(AppLayout.getHeight(20)),
                            Text("Take the survey about our services and get a discount", style: Styles.headlineStyle3.copyWith(fontWeight:FontWeight.bold, color: Colors.white ),)
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: AppLayout.getWidth(18),color: Color(0xFF189999)),
                              color : Colors.transparent
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    width: size.width *0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12),horizontal: AppLayout.getWidth(12)),
                    decoration: BoxDecoration(
                        color: Color(0xFFEC6565),
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12))
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headlineStyle2.copyWith(fontWeight:FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 50)
                              ),
                              TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 38)
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
