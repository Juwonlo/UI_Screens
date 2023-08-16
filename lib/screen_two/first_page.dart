import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';
import 'package:ui_screens/screen_two/bottom_container.dart';
import 'package:ui_screens/screen_two/dropdown_row.dart';
import 'package:ui_screens/screen_two/horizontal_container.dart';
import 'package:ui_screens/screen_two/the_flow_chart.dart';


class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: AppColor.secondaryColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 195,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.menu),
                        SecondaryText(
                            size: 15,
                            text: 'BUSINESS SUMMARY')
                      ],
                    ),
                  ),
                  SecondaryText(
                      size: 15,
                      text: 'SERVICEMAN')
                ],
              ),
            ),
             Padding(
               padding:  EdgeInsets.only(left: 8.0),
               child: GridContains(),
             ),
           SizedBox(height: 20,),
           // SizedBox(height: MediaQuery.sizeOf(context).height / 1.5,),
            Padding(padding: EdgeInsets.only(left:30),
              child: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.people),
                    SecondaryText(
                        size: 15,
                        text: 'EARNING STATISTICS')
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
      Padding(padding: EdgeInsets.only(left:30, right:30),
        child: RowDropDown(),
      ),
         SizedBox(height: 10,),
         LineChartContent(),
         SizedBox(height: 15,),
         BottomCon(),
          ],
        ),
      ),

    );
  }
}
