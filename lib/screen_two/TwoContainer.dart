import 'package:flutter/material.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Expansion Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleExpansion,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.blue,
                child: Center(
                  child: Text("First Container"),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: 0,
                left: _isExpanded ? 0 : MediaQuery.of(context).size.width - 100,
                right: _isExpanded ? 0 : 100,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    border: _isExpanded
                        ? Border.all(width: 0, color: Colors.transparent)
                        : Border(
                      top: BorderSide(width: 2.0, color: Colors.black),
                      bottom: BorderSide(width: 2.0, color: Colors.black),
                      left: BorderSide(width: 2.0, color: Colors.black),
                    ),
                  ),
                  color: Colors.red,
                  child: Center(
                    child: Text("Second Container"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
