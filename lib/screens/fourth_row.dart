import 'package:flutter/material.dart';

import 'constant.dart';

class FourthRow extends StatefulWidget {
  const FourthRow({Key? key}) : super(key: key);

  @override
  State<FourthRow> createState() => _FourthRowState();
}

class _FourthRowState extends State<FourthRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            child: SecondaryText(size: 12, text: 'Payment Method'),
          ),
          SizedBox(
            height: 6,
          ),
          AppContainer(
            color: AppColor.secondaryColor,
            width: MediaQuery.sizeOf(context).width,
            height: 85,
            child: Padding(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 18,
                left: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 22,
                    child: ListTile(
                      leading: Icon(
                        Icons.ac_unit_rounded,
                        size: 20,
                      ),
                      title: PrimaryText(
                        text: 'Come eteyeyhs wwww',
                        size: 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Container(
                      height: 22,
                      child: ListTile(
                        leading: SecondaryText(
                          size: 10,
                            text: 'Payment Status:',
                        ),
                        title: PrimaryText(
                          color:  Colors.red,
                          text: 'Unpaid',
                          size: 10,
                        ),
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
                        size: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
