import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ui_screens/screen_one/constant.dart';
import 'package:ui_screens/screen_two/main_page.dart';

class MyZoomPage extends StatefulWidget {
  const MyZoomPage({Key? key}) : super(key: key);

  @override
  State<MyZoomPage> createState() => _MyZoomPageState();
}

class _MyZoomPageState extends State<MyZoomPage> {
  final _drawerController = ZoomDrawerController();
  bool _isDrawerOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: _drawerController,
        style: DrawerStyle.defaultStyle,
        menuBackgroundColor: AppColor.secondaryColor,
        //style: DrawerStyleBuilder,
        mainScreen: MainPage(
          zoomController: _drawerController, isDrawerOpen: _isDrawerOpen,
          //handleDrawerStateChange: _handleDrawerStateChange,
        ),
        menuScreen: MyMenuScreen(),
        borderRadius: 20.0,
        showShadow: true,
        angle: -2.0,
        slideWidth: MediaQuery.of(context).size.width * 0.65,

        //slideWidth: MediaQuery.of(context).size.width*(ZoomDrawer.isRTL()? .45: 0.65),
        // slideWidth: MediaQuery.of(context).size.width * 0.65,
        //   (ZoomDrawer.isRTL() ? .45 : 0.65),

        //backgroundColor: Colors.grey[300],
        // slideWidth: MediaQuery.of(context).size.width *
        //     (ZoomDrawer.isRTL() ? .45 : 0.65),
        openCurve: Curves.decelerate,
        closeCurve: Curves.bounceIn,
      ),
    );
  }

  Widget MyMenuScreen() {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: AppColor.secondaryColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 30),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 3, left: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3, left: 10),
                    child: Text(
                      'Tom cryus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3, left: 10),
                    child: Text(
                      'SERVICEMAN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ///Dashboard
                  Container(
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.dashboard_customize,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'DashBoard',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ///Profile
                  Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.perm_identity_rounded,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ///Messages
                  Container(
                    width: 105,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.library_books_rounded,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'Messages',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ///History
                  Container(
                    width: 82,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.note_add,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ///Transactions
                  Container(
                    width: 123,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.recycling,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'Transactions',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ///settings
                  Container(
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.settings_rounded,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),

                  ///About Us
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 98,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.do_not_disturb_on,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'About Us',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),

                  ///Business ID
                  Container(
                    width: 115,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.account_box_outlined,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'Business ID',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ///Policies
                  Container(
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.policy_outlined,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'Policies',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.logout_rounded,
                          color: AppColor.primaryColor,
                        ),
                        Text(
                          'LogOut',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                left: 140,
                top: 70,
                child: IconButton(
                  icon: Icon(Icons.cancel_outlined),
                  onPressed: () {
                    _drawerController.toggle!();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
