
// import 'package:flutter/material.dart';
//
// class SlidableContainerScreen extends StatefulWidget {
//   @override
//   _SlidableContainerScreenState createState() => _SlidableContainerScreenState();
// }
//
// class _SlidableContainerScreenState extends State<SlidableContainerScreen> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Slidable Container with Tabs"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: DefaultTabController(
//               length: 3, // Number of tabs
//               initialIndex: _currentIndex,
//               child: Column(
//                 children: [
//                   // TabBar(
//                   //   onTap: (index) {
//                   //     setState(() {
//                   //       _currentIndex = index;
//                   //     });
//                   //   },
//                   //   tabs: [
//                   //     Tab(
//                   //       text: "Tab 1",
//                   //     ),
//                   //     Tab(
//                   //       text: "Tab 2",
//                   //     ),
//                   //     Tab(
//                   //       text: "Tab 3",
//                   //     ),
//                   //   ],
//                   // ),
//                   Expanded(
//                     child: TabBarView(
//                       children: [
//                         Container(
//                           width: MediaQuery.sizeOf(context).width, // Adjust container width
//                          height: MediaQuery.sizeOf(context).height / 4, //
//                           color: Colors.red,
//                           child: Center(
//                             child: Text(
//                               "Page 1",
//                               style: TextStyle(fontSize: 24, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           color: Colors.green,
//                           child: Center(
//                             child: Text(
//                               "Page 2",
//                               style: TextStyle(fontSize: 24, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           color: Colors.blue,
//                           child: Center(
//                             child: Text(
//                               "Page 3",
//                               style: TextStyle(fontSize: 24, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   TabBar(
//                     onTap: (index) {
//                       setState(() {
//                         _currentIndex = index;
//                       });
//                     },
//                     tabs: [
//                       Tab(
//                         text: "Tab 1",
//                       ),
//                       Tab(
//                         text: "Tab 2",
//                       ),
//                       Tab(
//                         text: "Tab 3",
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//}






import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';

class SlidableContainerScreen extends StatefulWidget {
  @override
  _SlidableContainerScreenState createState() => _SlidableContainerScreenState();
}

class _SlidableContainerScreenState extends State<SlidableContainerScreen> {
  PageController _pageController = PageController(initialPage: 0,);
  int _currentPageIndex = 0;


   @override
   void initState() {
     _pageController.addListener(() {
       setState(() {
         _currentPageIndex = _pageController.page!.round();
       });
     });
     super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
         // left: 10,right: 10
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
       height: MediaQuery.sizeOf(context).height / 3.6,

        child: Column(
          children: [
            Stack(
              children: [
                   Container(
                    width: MediaQuery.sizeOf(context).width, // Adjust container width
                    height: MediaQuery.sizeOf(context).height / 4, //
                    child:
              PageView(
                    scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPageIndex = index;
                        });
                      },
                      children: [
                        AppContainer(
                          width: 200, // Adjust container width
                           height: 300, // Adjust container height
                          color: AppColor.secondaryColor,
                          child: Center(
                            child: Text(
                              "Container 1",
                              style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                        ),
                        AppContainer(
                           width: 200, // Adjust container width
                          height: 300, // Adjust container height
                          color: AppColor.secondaryColor,
                          child: Center(
                            child: Text(
                              "Container 2",
                              style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                ),
      Positioned(
        left: 25,
        bottom: 12,
            child: Container(
              child: SecondaryText(
                textAlign: TextAlign.center,
                   text: 'Booking Details',
                size: 15,

              ),
            )
      ),
                Positioned(
                    right: 35,
                    bottom: 12,
                    child: Container(
                      child: SecondaryText(
                        textAlign: TextAlign.center,
                        text: 'Status',
                        size: 15,

                      ),
                    )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:20.0, left: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 130,
                      height: 4.5, // Adjust tab height
                      color: _currentPageIndex == 0 ? AppColor.primaryColor : Colors.transparent,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 80,
                      height: 4.5, // Adjust tab height
                      color: _currentPageIndex == 1 ? AppColor.primaryColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

