// import 'package:flutter/material.dart';
//
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;
//
//   final List<Widget> _screens = [
//     Screen1(),
//     Screen2(),
//     Screen3(),
//     Screen4(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Floating Bottom Navigation Bar'),
//       ),
//       body: _screens[_currentIndex],
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: Align(
//         alignment: Alignment.bottomCenter,
//         child: Container(
//           width: MediaQuery.of(context).size.width / 1.2 ,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 1,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           child: BottomNavigationBar(
//             backgroundColor: Colors.white,
//             selectedItemColor: Colors.blue,
//             unselectedItemColor: Colors.grey,
//             currentIndex: _currentIndex,
//             onTap: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.search),
//                 label: 'Search',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite),
//                 label: 'Favorites',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 label: 'Settings',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Center(
//         child: Text('Home Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text('Search Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text('Favorites Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.orange,
//       child: Center(
//         child: Text('Settings Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//
//   final PageController _pageController = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Navigation Tab Controller'),
//       ),
//       body: Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             children: [
//               Screen1(),
//               Screen2(),
//               Screen3(),
//               Screen4(),
//             ],
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 70,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 5,
//                     offset: Offset(0, -3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildTabItem(0, Icons.home, 'Home'),
//                   _buildTabItem(1, Icons.search, 'Search'),
//                   _buildTabItem(2, Icons.favorite, 'Favorites'),
//                   _buildTabItem(3, Icons.settings, 'Settings'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTabItem(int index, IconData icon, String label) {
//     return GestureDetector(
//       onTap: () {
//         _pageController.animateToPage(
//           index,
//           duration: Duration(milliseconds: 300),
//           curve: Curves.easeInOut,
//         );
//       },
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               color: _currentIndex == index ? Colors.blue : Colors.grey,
//             ),
//             Text(
//               label,
//               style: TextStyle(
//                 color: _currentIndex == index ? Colors.blue : Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Center(
//         child: Text('Home Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text('Search Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text('Favorites Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.orange,
//       child: Center(
//         child: Text('Settings Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//
//   final List<Widget> _screens = [
//     Screen1(),
//     Screen2(),
//     Screen3(),
//     Screen4(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Navigation Tab Controller'),
//       ),
//       body: Stack(
//         children: [
//           _screens[_currentIndex],
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 80,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 5,
//                     offset: Offset(0, -3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildTabItem(0, Icons.home, 'Home'),
//                   _buildTabItem(1, Icons.search, 'Search'),
//                   _buildTabItem(2, Icons.favorite, 'Favorites'),
//                   _buildTabItem(3, Icons.settings, 'Settings'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTabItem(int index, IconData icon, String label) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             if (_currentIndex == index)
//               Container(
//                 width: 24,
//                 height: 4,
//                 color: Colors.blue,
//               ),
//             SizedBox(height: 4),
//             Icon(
//               icon,
//               color: _currentIndex == index ? Colors.blue : Colors.grey,
//             ),
//             Text(
//               label,
//               style: TextStyle(
//                 color: _currentIndex == index ? Colors.blue : Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Center(
//         child: Text('Home Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text('Search Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text('Favorites Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
//
// class Screen4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.orange,
//       child: Center(
//         child: Text('Settings Screen', style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Tab Controller'),
      ),
      body: Stack(
        children: [
          _screens[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
               child: Stack(
                 children: [
                   Container(
                     height: 65,
                     width: MediaQuery.of(context).size.width / 1.3 ,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                 ),
                   ),
                     Positioned(
                       bottom: 1,
                     child: Container(
                        height: 65,
                        width: MediaQuery.of(context).size.width / 1.3 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, -3),
                            ),
                          ],
                        ),
                           child: Center(
                             child: Container(
                               width: MediaQuery.of(context).size.width / 1.4 ,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),
                               ),
                               height: 62,
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
                   ),
                 ],
               ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 10, // Adjust the height of the tab controller bar as needed
              color: Colors.blue, // Color of the tab controller bar
              width: double.infinity,
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
                width: 35,
                height: 3,
                color: Colors.blue,
              ),
            SizedBox(height: 3),
            Icon(
              icon,
              size: 35,
              color: _currentIndex == index ? Colors.blue : Colors.grey,
            ),
            Text(

              label,
              style: TextStyle(
                fontSize: 15,
                color: _currentIndex == index ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Home Screen', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text('Search Screen', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('Favorites Screen', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text('Settings Screen', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

