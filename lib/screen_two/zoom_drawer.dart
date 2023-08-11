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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: _drawerController,
        style: DrawerStyle.style1,
        mainScreen: MainPage(zoomController: _drawerController,),
        menuScreen: MyMenuScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        // backgroundColor: Colors.grey[300],
        // slideWidth: MediaQuery.of(context).size.width *
        //     (ZoomDrawer.isRTL() ? .45 : 0.65),
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }


  Widget MyMenuScreen(){
    return Scaffold(

    );
  }
}
