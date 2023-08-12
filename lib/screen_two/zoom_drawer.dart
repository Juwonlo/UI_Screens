import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ui_screens/screen_two/main_page.dart';



class MyZoomPage extends StatefulWidget {
  const MyZoomPage({Key? key}) : super(key: key);

  @override
  State<MyZoomPage> createState() => _MyZoomPageState();
}

class _MyZoomPageState extends State<MyZoomPage> {

  final _drawerController = ZoomDrawerController();
  bool _isDrawerOpen = true;


  // void _handleDrawerStateChange(bool isOpen) {
  //   setState(() {
  //     _isDrawerOpen = isOpen;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: _drawerController,
        style: DrawerStyle.style1,
        mainScreen: MainPage(zoomController: _drawerController,isDrawerOpen: _isDrawerOpen,
              //handleDrawerStateChange: _handleDrawerStateChange,
            ),
        menuScreen: MyMenuScreen(),
        borderRadius: 20.0,
        showShadow: true,
        angle: 0.0,


        //slideWidth: MediaQuery.of(context).size.width*(ZoomDrawer.isRTL()? .45: 0.65),
       // slideWidth: MediaQuery.of(context).size.width * 0.65,
         //   (ZoomDrawer.isRTL() ? .45 : 0.65),

        // backgroundColor: Colors.grey[300],
        // slideWidth: MediaQuery.of(context).size.width *
        //     (ZoomDrawer.isRTL() ? .45 : 0.65),
        openCurve: Curves.decelerate,
        closeCurve: Curves.bounceIn,
      ),
    );
  }


  Widget MyMenuScreen(){
    return Scaffold(
         body: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: <Widget>[
               IconButton(
                 icon: Icon(Icons.menu),
                 onPressed: () {
                   _drawerController.toggle!();
                 },
               ),
             ],
           ),
         ),
    );
  }
}
