import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';
import 'package:ui_screens/screen_two/first_page.dart';
import 'package:ui_screens/screen_two/fourth_page.dart';
import 'package:ui_screens/screen_two/second_page.dart';
import 'package:ui_screens/screen_two/third_page.dart';

class MainPage extends StatefulWidget {

  final  zoomController;


  const MainPage({Key? key, this.zoomController}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    DashBoardPage(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            _screens[_currentIndex],
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,

              child: Stack(
                children: [
                  Container(
                    height: 58,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.primaryColor,
                    ),
                  ),
                  Positioned(
                    bottom: 7,
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.transparent,
                      ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:25.0, right: 25.0,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildTabItem(0, Icons.home, 'Home'),
                                _buildTabItem(1, Icons.search, 'Search'),
                                _buildTabItem(2, Icons.favorite, 'Favorites'),
                                _buildTabItem(3, Icons.settings, 'Settings'),
                              ],
                            ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
    );
  }

  Widget _buildTabItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        //padding: EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_currentIndex == index)
              Container(
                width: 40,
                height: 3,
                color: AppColor.secondaryColor,
              ),
            SizedBox(height: 3),
            Icon(
              icon,
              size: 28,
              color: _currentIndex == index ? AppColor.secondaryColor : AppColor.secondaryColor,
            ),
           PrimaryText(
             text: label,
                size: 10,
                color: _currentIndex == index ? AppColor.secondaryColor : AppColor.secondaryColor,
              ),
          ],
        ),
      ),
    );
  }
}
