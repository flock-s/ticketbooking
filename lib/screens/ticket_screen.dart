import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getWidth(20)),
            children: [
              Text("Tickets",style: Styles.headlineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getWidth(20)),
                child: TicketView(ticket: ticketList[0],isColor: true,),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Text("Flutter DB", style: Styles.headlineStyle3,),
                    Gap(AppLayout.getHeight(5)),
                    Text("Passenger", style: Styles.headlineStyle3,)
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
