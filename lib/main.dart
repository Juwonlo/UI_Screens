import 'package:flutter/material.dart';
import 'package:ui_screens/screen_two/bottom_container.dart';
import 'package:ui_screens/screen_two/zoom_drawer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: BottomCon(),
    );
  }
}






// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key,});
//
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Drawer Example'),
//       //   leading: IconButton(
//       //     icon: Icon(Icons.menu),
//       //     onPressed: toggleDrawer,
//       //   ),
//       // ),
//       //drawer: MyHomePage(),
//       body : PageTwo(),
//
//       //HomePage(),
//     );
//
//       // SingleChildScrollView(
//       //   scrollDirection: Axis.vertical,
//       //   child: Column(
//       //
//       //     children: <Widget>[
//             ///Screen One
//             //     SlidableContainerScreen(),
//             // SecondRow(),
//             // SizedBox(height: 8,),
//             // ThirdRow(),
//             // SizedBox(height: 8,),
//             // FourthRow(),
//             // SizedBox(height: 8,),
//             // SixRow(),
//             // SizedBox(height: 8,),
//             // LastRow(),
//
//
//             ///Screen two
//            // MyHomePage(),
//     //       ],
//     //     ),
//     //   ),
//     //
//     // );
//   }
// }
