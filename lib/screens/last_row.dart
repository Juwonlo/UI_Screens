import 'package:flutter/material.dart';
import 'package:ui_screens/screens/constant.dart';
import 'package:ui_screens/screens/dropdown.dart';


class LastRow extends StatefulWidget {
  const LastRow({Key? key}) : super(key: key);

  @override
  State<LastRow> createState() => _LastRowState();
}

class _LastRowState extends State<LastRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:8, right: 8,bottom: 10),
      child: Stack(
        children: <Widget>[
         AppContainer(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 1.62,
          color: AppColor.secondaryColor,
          child: Padding(
            padding: const EdgeInsets.only(top:5, left: 8, right: 8,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //First word
                Padding(padding: EdgeInsets.only(left: 100, right: 40,),
                  child: SecondaryText(
                    color: AppColor.primaryColor,
                    text: 'Booking Summary',
                    size: 18,
                  ),
                ),
                      SizedBox(
                        height: 6,
                      ),
                      //SecondContainer
                AppContainer(
                    color: AppColor.extraColor,
                    width: MediaQuery.sizeOf(context).width,
                    height: 35,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SecondaryText(
                            color: AppColor.primaryColor,
                            text: 'Service Info',
                            size: 14,
                          ),
                          SecondaryText(
                            color: AppColor.primaryColor,
                            text: 'Service Cost',
                            size: 14,
                          ),
                        ],
                      ),
                ),
                ),
               SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: 'Wall Coodination',
                      size: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8),
                      child: SecondaryText(
                        color: AppColor.primaryColor,
                        text: '\$100.00',
                        size: 14,
                      ),
                    ),
                  ],
                ),
                //Spacer(),
                SizedBox(height: 3,),
                PrimaryText(
                    text: 'Goddd'),
               // Spacer(),
                SizedBox(height: 3,),
                PrimaryText(
                    text: 'Godddddddhbafttys'),
                //Spacer(),
                SizedBox(height: 3,),
                PrimaryText(
                    text: 'Godddsss'),
                //Spacer(),
                SizedBox(height: 3,),
                PrimaryText(
                    text: 'Godddsssssssssssss'),
                //Spacer(),
                SizedBox(height: 3,),
                PrimaryText(
                    text: 'Godddsss'),
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: 'Wall Coodination',
                      size: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8),
                      child: SecondaryText(
                        color: AppColor.primaryColor,
                        text: '\$100.00',
                        size: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3,),
                //Spacer(),
                PrimaryText(
                    text: 'Goddd'),
                SizedBox(height: 3,),
                //Spacer(),
                PrimaryText(
                    text: 'Godddddddhbafttys'),
                SizedBox(height: 3,),
                //Spacer(),
                PrimaryText(
                    text: 'Godddsss'),
                SizedBox(height: 3,),
                //Spacer(),
                PrimaryText(
                    text: 'Godddsssssssssssss'),
               // Spacer(),
               SizedBox(height: 5,),
                Divider(
                  height: 3,          // Height of the divider line
                  color: AppColor.primaryColor,  // Color of the divider line
                  thickness: 2,       // Thickness of the divider line
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PrimaryText(
                      color: AppColor.primaryColor,
                      text: 'Grand Total',
                      size: 14,
                    ),
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: '\$288.78',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PrimaryText(
                      color: AppColor.primaryColor,
                      text: 'Grand Total',
                      size: 14,
                    ),
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: '\$288.78',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PrimaryText(
                      color: AppColor.primaryColor,
                      text: 'Grand Total',
                      size: 14,
                    ),
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: '\$288.78',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PrimaryText(
                      color: AppColor.primaryColor,
                      text: 'Grand Total',
                      size: 14,
                    ),
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: '\$288.78',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Divider(
                  height: 3,          // Height of the divider line
                  color: AppColor.primaryColor,  // Color of the divider line
                  thickness: 2,       // Thickness of the divider line
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: 'Grand Total',
                      size: 14,
                    ),
                    SecondaryText(
                      color: AppColor.primaryColor,
                      text: '\$288.78',
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

          //DropDown Widget......
          Positioned(
            left: 10,
            bottom: 30,
            child: TwoContainerExample(),
          ),
          //Change Button.......
          Positioned(
            bottom: 30,
              right: 10,
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                child: Center(
                  child: SecondaryText(
                    color: AppColor.secondaryColor,
                    size: 17,
                    text: 'Change',
                  ),
                ),
              ),
          ),
          // Positioned(
          //   bottom:0,
          //     child: SizedBox(height: 15,))
    ],
      ),
    );
  }
}
