import 'package:flutter/material.dart';

import '../screen_one/constant.dart';


class BottomCon extends StatefulWidget {
  const BottomCon({Key? key}) : super(key: key);

  @override
  State<BottomCon> createState() => _BottomConState();
}

class _BottomConState extends State<BottomCon> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 3.3 ,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),

      ),
    );
  }
}
