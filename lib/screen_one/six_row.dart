import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';

class SixRow extends StatefulWidget {
  const SixRow({Key? key}) : super(key: key);

  @override
  State<SixRow> createState() => _SixRowState();
}

class _SixRowState extends State<SixRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: SecondaryText(size: 12, text: 'Customer Information'),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  AppContainer(
                    color: AppColor.secondaryColor,
                    width: MediaQuery.sizeOf(context).width / 2.2,
                    height: 100,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Spacer(
                            flex: 2,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          PrimaryText(size: 8, text: 'Goddd'),
                          // Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddddddhbafttys'),
                          //Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddsss'),
                          //Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddsssssssssssss'),
                          //Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddsss'),
                        ],
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Transform.translate(
                      offset: Offset(65, -20),
                      child: CircleAvatar(
                        radius: 30,
                        // backgroundImage: AssetImage('assets/profile_image.png'),
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                  //),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: SecondaryText(size: 12, text: 'Provider Information'),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  AppContainer(
                    color: AppColor.secondaryColor,
                    width: MediaQuery.sizeOf(context).width / 2.2,
                    height: 100,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Spacer(
                            flex: 2,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          PrimaryText(size: 8, text: 'Goddd'),
                          // Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddddddhbafttys'),
                          //Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddsss'),
                          //Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddsssssssssssss'),
                          //Spacer(),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(size: 8, text: 'Godddsss'),
                        ],
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Transform.translate(
                      offset: Offset(65, -20),
                      child: CircleAvatar(
                        radius: 30,
                        // backgroundImage: AssetImage('assets/profile_image.png'),
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                  //),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
