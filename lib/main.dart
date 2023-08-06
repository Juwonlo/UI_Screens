import 'package:flutter/material.dart';
import 'package:ui_screens/screens/dropdown.dart';
import 'package:ui_screens/screens/first_container.dart';
import 'package:ui_screens/screens/fourth_row.dart';
import 'package:ui_screens/screens/last_row.dart';
import 'package:ui_screens/screens/second_row.dart';
import 'package:ui_screens/screens/six_row.dart';
import 'package:ui_screens/screens/third_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: <Widget>[
                SlidableContainerScreen(),
            SecondRow(),
            SizedBox(height: 8,),
            ThirdRow(),
            SizedBox(height: 8,),
            FourthRow(),
            SizedBox(height: 8,),
            SixRow(),
            SizedBox(height: 8,),
            LastRow(),
          ],
        ),
      ),

    );
  }
}
