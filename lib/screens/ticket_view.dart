import 'dart:ffi';

import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {

  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key,required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Column(
        children: [
          //Blue Part of Ticket
          Container(
            margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(16)),topRight: Radius.circular(AppLayout.getHeight(16))),
              color: isColor==true?Colors.white:const Color(0xFF526799)
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("${ticket['from']['code']}", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                    Expanded(child: Container()),
                    const ThickContainer(isColor:true),
                    Expanded(child: Stack(
                      children:[
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                  width: AppLayout.getWidth(3),height: AppLayout.getHeight(1), child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: isColor==true?Colors.blue:Colors.white
                                  ),
                                ),
                                )),
                              );
                            },),
                        ),
                        Center(
                          child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport,color: isColor==true?Colors.blue:Colors.white),),
                        )

                      ]
                    )),
                    const ThickContainer(isColor: true,),
                    Expanded(child: Container()),

                    Text("${ticket['to']['code']}",style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                        child:Text("${ticket['from']['name']}", style: Styles.headlineStyle4.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                    ),
                    Text("${ticket['flying_time']}", style: Styles.headlineStyle4.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child:Text("${ticket['to']['name']}", style: Styles.headlineStyle4.copyWith(color: isColor==true?Colors.grey:Colors.white),textAlign: TextAlign.end,),
                    ),

                  ],
                )
              ],
            ),
          ),
          //Rip-able part of ticket
          Container(
            margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
            color: isColor==true?Colors.white:const Color(0xFFF55E1D),
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color : Colors.white,
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppLayout.getHeight(10)),
                        bottomRight: Radius.circular(AppLayout.getHeight(10)),
                      )
                    ),
                  ),
                ),
                Expanded(child: Padding(
                  padding: EdgeInsets.all(AppLayout.getHeight(16)),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                          width: AppLayout.getWidth(5), height: AppLayout.getHeight(1),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: isColor==true?Colors.grey:Colors.white
                            ),
                          ),
                        )),
                      );
                    }
                  ),
                )),
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          //Bottom part of Ticket
          Container(
            margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(16)),bottomRight: Radius.circular(AppLayout.getHeight(16))),
                color: isColor==true?Colors.white:Colors.orange
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${ticket['date']}", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                        const Gap(5),
                        Text("Date", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${ticket['departure_time']}", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                        const Gap(5),
                        Text("Destination Time", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("${ticket['number']}", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                        const Gap(5),
                        Text("Seat", style: Styles.headlineStyle3.copyWith(color: isColor==true?Colors.grey:Colors.white),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
