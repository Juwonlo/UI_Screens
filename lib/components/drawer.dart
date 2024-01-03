import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.extraColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
          padding:EdgeInsets.only(top: 130, left: 15,bottom: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
             ListTile(
               minLeadingWidth : 2,
                leading: IconButton(
                  icon:  Icon(Icons.dashboard),
                  onPressed: () {},),
                title: PrimaryText(
                  color: AppColor.primaryColor,
                  text: 'Dashboard',
                ),
              ),

          ],
        ),

      ),
    );
  }
}
