// import 'package:flutter/material.dart';
// import 'package:ui_screens/screen_one/constant.dart';
//
//
//
// class MyPage extends StatefulWidget {
//   @override
//   _MyPageState createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> {
//   bool _isExpanded = false;
//
//   void _toggleExpansion() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Container Expansion Example"),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: _toggleExpansion,
//           child: Stack(
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 color: Colors.blue,
//                 child: Center(
//                   child: Text("First Container"),
//                 ),
//               ),
//               AnimatedPositioned(
//                 duration: Duration(milliseconds: 300),
//                 top: _isExpanded ? 0 : 100,
//                 left: _isExpanded ? 0 : MediaQuery.of(context).size.width / 2 ,
//                right: _isExpanded ? 0 : 0,
//                 bottom: _isExpanded ? 0 : 100,
//                 child: Container(
//                   // width: _isExpanded
//                   //     ? MediaQuery.of(context).size.width
//                   //     : MediaQuery.of(context).size.width / 2,
//                   // height: _isExpanded
//                   //     ? MediaQuery.of(context).size.height
//                   //     : MediaQuery.of(context).size.height / 2,
//                   // width: _isExpanded
//                   //     ? MediaQuery.of(context).size.width
//                   //     : 200, // Initial width before animation
//                   // height: MediaQuery.of(context).size.height,
//                   decoration: BoxDecoration(
//                     border: _isExpanded
//                         ? Border.all(width: 0, color: Colors.transparent)
//                         : Border(
//                       top: BorderSide(width: 2.0, color: Colors.black),
//                       bottom: BorderSide(width: 2.0, color: Colors.black),
//                       left: BorderSide(width: 2.0, color: Colors.black),
//                     ),
//                   ),
//
//                   child: PageOne(),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//  class PageOne extends StatefulWidget {
//    const PageOne({Key? key}) : super(key: key);
//
//    @override
//    State<PageOne> createState() => _PageOneState();
//  }
//
//  class _PageOneState extends State<PageOne> {
//    @override
//    Widget build(BuildContext context) {
//      return Container(
//          color: AppColor.extraColor,
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
//
//      );
//    }
//  }
//

///hhhhhhhhhh
// import 'package:flutter/material.dart';
//
// class MyPage extends StatefulWidget {
//   @override
//   _MyPageState createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> {
//   bool _isExpanded = false;
//
//   void _toggleExpansion() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Container Expansion Example"),
//       ),
//       body: Center(
//         child: Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               color: Colors.blue,
//               child: PageOne(onToggle: _toggleExpansion),
//             ),
//             AnimatedPositioned(
//               duration: Duration(milliseconds: 300),
//               top: _isExpanded ? 0 : 100,
//               left: _isExpanded ? 0 : MediaQuery.of(context).size.width / 2,
//               right: _isExpanded ? 0 : 0,
//               bottom: _isExpanded ? 0 : 100,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 decoration: BoxDecoration(
//                   border: _isExpanded
//                       ? Border.all(width: 0, color: Colors.transparent)
//                       : Border(
//                     top: BorderSide(width: 2.0, color: Colors.black),
//                     bottom: BorderSide(width: 2.0, color: Colors.black),
//                     left: BorderSide(width: 2.0, color: Colors.black),
//                   ),
//                 ),
//                 child: _isExpanded ? PageTwo(onToggle: _toggleExpansion) : PageTwo(onToggle: _toggleExpansion),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class PageOne extends StatelessWidget {
//   final VoidCallback onToggle;
//
//   PageOne({required this.onToggle});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           color: Colors.red,
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//         ),
//         Positioned(
//           top: 20,
//           left: 20,
//           child: IconButton(
//             icon: Icon(Icons.arrow_back), // Use the reverse icon of your choice
//             onPressed: onToggle,
//             color: Colors.white,
//             iconSize: 40,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
// class PageTwo extends StatelessWidget {
//   final VoidCallback onToggle;
//
//   const PageTwo({required this.onToggle, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: Center(
//         child: IconButton(
//           icon: Icon(Icons.arrow_forward),
//           onPressed: onToggle,
//           color: Colors.white,
//           iconSize: 40,
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:ui_screens/test_screen_two/drawer.dart';
import 'package:ui_screens/test_screen_two/page_one.dart';


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _reverseExpansion() {
    setState(() {
      _isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Expansion Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              child: PageOne(onToggle: _reverseExpansion),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              top: _isExpanded ? 0 : 100,
              left: _isExpanded ? 0 : MediaQuery.of(context).size.width / 2,
              right: _isExpanded ? 0 : 0,
              bottom: _isExpanded ? 0 : 100,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  border: _isExpanded
                      ? Border.all(width: 0, color: Colors.transparent)
                      : Border(
                    top: BorderSide(width: 2.0, color: Colors.black),
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                    left: BorderSide(width: 2.0, color: Colors.black),
                  ),
                ),
                child: _isExpanded
                    ? PageTwo(onToggle: _toggleExpansion)
                    : PageTwo(onToggle: (){}), // Disable the button in PageTwo
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  final VoidCallback onToggle;

  PageOne({required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: MyDrawer(),
        ),
        Positioned(
          top: 70,
          left: 150,
          child: IconButton(
            icon: Icon(Icons.cancel), // Use the reverse icon of your choice
            onPressed: onToggle,
            color: Colors.white,
            iconSize: 40,
          ),
        ),
      ],
    );
  }
}

class PageTwo extends StatelessWidget {
  final VoidCallback onToggle;

  const PageTwo({required this.onToggle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            child: MyPageTwo(),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: onToggle,
              color: Colors.white,
              iconSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
