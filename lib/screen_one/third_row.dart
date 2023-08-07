import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';

class ThirdRow extends StatefulWidget {
  const ThirdRow({Key? key}) : super(key: key);

  @override
  State<ThirdRow> createState() => _ThirdRowState();
}

class _ThirdRowState extends State<ThirdRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20,),
    child: Stack(
      children: <Widget>[
        AppContainer(
            width: MediaQuery.sizeOf(context).width,
            height: 100,
          color: AppColor.secondaryColor,
          child: Padding(padding: EdgeInsets.only(top: 4,bottom: 4, left: 4, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height:22,
                child: ListTile(
                  leading: Icon(
                     Icons.ac_unit_rounded,
                    size: 20,
                  ),
                  title: PrimaryText(
                    text: 'Come eteyeyhs wwww',
                    size: 12,
                  ),
                ),
              ),
              //SizedBox(height: 3,),
              Container(
                height: 22,
                child: ListTile(
                  leading: Icon(
                    Icons.ac_unit_rounded,
                    size: 20,
                  ),
                  title: PrimaryText(
                    text: 'Come eteyeyhs wwww',
                    size: 12,
                  ),
                ),
              ),
              //SizedBox(height: 3,),
              Container(
                height: 22,
                child: ListTile(
                  leading: Icon(
                    Icons.ac_unit_rounded,
                    size: 20,
                  ),
                  title: PrimaryText(
                    text: 'Come eteyeyhs wwwwwwwwwwwwwwwww',
                    size: 12,
                  ),
                ),
              ),
              //SizedBox(height: 3,),
            ],
          ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 15,
          child: Container(
            width: 65,
            height: 25,
            decoration: BoxDecoration(
                color: AppColor.extraColor,
                borderRadius: BorderRadius.circular(5.0)
            ),
            child: Center(
              child: SecondaryText(
                color: AppColor.primaryColor,
                size: 12,
                text: 'Change',
              ),
            ),
          ),
        ),
      ],
    ),
    );
  }
}
