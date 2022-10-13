import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.only(left: AppLayout.getHeight(16),right: AppLayout.getHeight(20)),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(16)), bottomRight: Radius.circular(AppLayout.getHeight(16))),
                  color: Colors.white,
                ),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "Flutter DB",secondText: "Passenger", alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: "5221 364869",secondText: "Passport", alignment: CrossAxisAlignment.end,)

                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15,isColor: true,width: 5,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "364738 2872478",secondText: "Number of E-Ticket", alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: "B2SG28",secondText: "Passport", alignment: CrossAxisAlignment.end,)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15,isColor: true,width: 5,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",scale: 11,),
                                Text(" *** 1223",style: Styles.headlineStyle3,)

                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text("Payment Method",style: Styles.headlineStyle4,)

                          ],
                        ),
                        const AppColumnLayout(firstText: "\$ 320",secondText: "Price", alignment: CrossAxisAlignment.end,)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15,isColor: true,width: 5,),
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://github.com/martinovo',
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getWidth(20)),
                child: TicketView(ticket: ticketList[0],isColor: false,),
              ),

            ],
          )
        ],
      ),
    );
  }
}
