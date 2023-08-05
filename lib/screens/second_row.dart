import 'package:flutter/material.dart';
import 'package:ui_screens/screens/constant.dart';


class SecondRow extends StatefulWidget {
  const SecondRow({Key? key}) : super(key: key);

  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left:45, right: 65, top: 20, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppButton(
            onTap: (){}, 
            child: SecondaryText(
              size: 12,
               text: 'Change Schedule',
            ),
        ),
        AppButton(
          onTap: (){},
          child: SecondaryText(
            size: 12,
             text: 'Invoice',
          ),
        ),
      ],
    ),
    
    );
  }
}
