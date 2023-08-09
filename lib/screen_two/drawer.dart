// import 'package:flutter/material.dart';
//
//
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool isDrawerOpen = false;
//
//   void toggleDrawer() {
//     setState(() {
//       isDrawerOpen = !isDrawerOpen;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer Example'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: toggleDrawer,
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {
//                 // Handle item 1 tap
//               },
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {
//                 // Handle item 2 tap
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           border: isDrawerOpen ? Border.all(color: Colors.grey) : null,
//           //border: Border.all(color: Colors.grey), // Add border to body
//         ),
//         width: isDrawerOpen ? MediaQuery.of(context).size.width - 300 : MediaQuery.of(context).size.width, // Reduce width when drawer is open
//          height: MediaQuery.of(context).size.height - (isDrawerOpen ? 100 : 0),
//         //height: isDrawerOpen ? MediaQuery.of(context).size.width - 20 : MediaQuery.of(context).size.height,
//         child: Center(
//           child: Text('Main Content'),
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool isDrawerOpen = false;
//
//   void toggleDrawer() {
//     setState(() {
//       isDrawerOpen = !isDrawerOpen;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer Example'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: toggleDrawer,
//         ),
//       ),
//       drawer: Drawer(
//        // backgroundColor: Colors.red,
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {
//                 // Handle item 1 tap
//               },
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {
//                 // Handle item 2 tap
//               },
//             ),
//           ],
//         ),
//       ),
//       body: ClipPath(
//         child: AnimatedContainer(
//           duration: Duration(milliseconds: 300),
//           margin: EdgeInsets.only(left: isDrawerOpen ? 300 : 0),
//           width: isDrawerOpen ? MediaQuery.of(context).size.width - 300 : MediaQuery.of(context).size.width,
//           height: isDrawerOpen ? MediaQuery.of(context).size.height - 200: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//             // border: isDrawerOpen
//             //     ? Border.all(color: Colors.grey, width: 3,) : null,
//             // border: Border(
//             //   left: isDrawerOpen ? BorderSide(color: Colors.grey, width: 3.0) : BorderSide.none,
//             //   top: BorderSide(color: Colors.grey, width: 3.0),
//             //   bottom: BorderSide(color: Colors.grey, width: 3.0),
//             // ),
//             border: isDrawerOpen
//                 ? Border(
//               left: BorderSide(color: Colors.grey, width: 3.0),
//               top: BorderSide(color: Colors.grey, width: 3.0),
//               bottom: BorderSide(color: Colors.grey, width: 3.0),
//               //right: BorderSide(color: Colors.transparent, width: 3.0),
//             )
//                 : null,
//             // borderRadius: isDrawerOpen
//             //     ? BorderRadius.only(
//             //   topLeft: Radius.circular(16.0),
//             //   bottomLeft: Radius.circular(16.0),
//             // )
//             //     : null,
//           ),
//           child: Center(
//             child: Text('Main Content'),
//           ),
//         ),
//         clipper: ShapeBorderClipper(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(3)),
//       ),
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDrawerOpen = false;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: toggleDrawer,
        ),
      ),
      body: Stack(
        children: [
          Container(
            //height: MediaQuery.of(context).size.height - (isDrawerOpen ? 200 : 0),
            decoration: BoxDecoration(
              border: isDrawerOpen
                  ? Border(
                left: BorderSide(color: Colors.grey, width: 3.0),
                top: BorderSide(color: Colors.grey, width: 3.0),
                bottom: BorderSide(color: Colors.grey, width: 3.0),
              )
                  : null,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.only(left: isDrawerOpen ? 300 : 0),
                width: isDrawerOpen
                    ? MediaQuery.of(context).size.width - 300
                    : MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height - (isDrawerOpen ? 200 : 0),
                child: Center(
                  child: Text('Main Content'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: isDrawerOpen ? 0 : -300,
            child: Container(
              width: 350,
              color: Colors.white,
              child: Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {
                      // Handle item 1 tap
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {
                      // Handle item 2 tap
                    },
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
