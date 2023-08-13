import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';


class GridContains extends StatefulWidget {
  const GridContains({Key? key}) : super(key: key);

  @override
  State<GridContains> createState() => _GridContainsState();
}

class _GridContainsState extends State<GridContains> {
  final List<String> myText = [
    '\$23344',
    '\$0',
    '\$0'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: myText.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width:140,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.extraColor,
            ),
            child: Column(
              children: [
                SizedBox(height:15,),
                Text('Total Assigning Booking',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(myText[index], // Display individual text from myText list
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10.0); // Adjust the spacing here
        },
      ),
    );
  }
}
