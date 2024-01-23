import 'package:flutter/material.dart';


class MyPageTwo extends StatefulWidget {
  const MyPageTwo({Key? key}) : super(key: key);

  @override
  State<MyPageTwo> createState() => _MyPageTwoState();
}

class _MyPageTwoState extends State<MyPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
       child: Column(
         children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width - 100,
             height: MediaQuery.of(context).size.height / 2,
             color: Colors.red,
           )
         ],
       ),
    );
  }
}
