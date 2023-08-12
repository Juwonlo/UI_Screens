import 'package:flutter/material.dart';

import '../screen_one/constant.dart';


class BottomCon extends StatefulWidget {
  const BottomCon({Key? key}) : super(key: key);

  @override
  State<BottomCon> createState() => _BottomConState();
}

class _BottomConState extends State<BottomCon> {

  final List<String> items = [
    '#10016',
    '#10017',
    '#10018',
    '#10019',
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 2.5 ,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
           child: Padding(padding: EdgeInsets.only(left:15, top: 8, right:15),

           // child: SingleChildScrollView(
           //   scrollDirection: Axis.vertical,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Container(
                   width: 190,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Icon(Icons.people),
                       SecondaryText(
                         size: 12,
                           text: 'Recent Booking Activities')
                     ],
                   ),
                 ),
                 SizedBox(height: 15,),
                 Expanded(
                   child: ListView.builder(
                     itemCount: items.length,
                     itemBuilder: (context, index) {
                       return Column(
                         children: [
                           Container(
                             width: MediaQuery.sizeOf(context).width,
                             height: 100,
                             decoration: BoxDecoration(
                               color: AppColor.extraColor,
                               borderRadius: BorderRadius.circular(10),
                             ),
                              child: Padding(
                                  padding:EdgeInsets.only(left:15, top: 8, right:15, bottom: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 70,
                                    width: 70,
                                    color: AppColor.primaryColor,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20,),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        PrimaryText(
                                            text: 'Booking'+ items[index],),
                                        Text('Booking Date : 22 jan 2023 21:54',
                                        style: TextStyle(
                                        fontSize: 10,
                                        //color: Colors.white,
                       ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: 25,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: AppColor.primaryColor,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text('Completed',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                      ),
                                      Container(
                                        height: 22,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 2,left: 5, right: 3, bottom: 2),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                            Text('View Details',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                            ),
                                              Icon(Icons.arrow_forward,
                                                color: Colors.black,
                                                size: 13,
                                              ),
                                          ],
                                      ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ),
                       //Text(
                             //   items[index],
                             //   style: TextStyle(color: Colors.white),
                             // ),
                           ),
                           SizedBox(height: 8.0), // Adjust the height as needed
                         ],
                       );
                     },
                   ),
                 )

               ],
             ),
           ),
           ),
      //),
    );
  }
}
