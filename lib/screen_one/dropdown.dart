// import 'package:flutter/material.dart';
// import 'package:ui_screens/screens/constant.dart';
//
// class CustomDropdownMenuExample extends StatefulWidget {
//   @override
//   _CustomDropdownMenuExampleState createState() => _CustomDropdownMenuExampleState();
// }
//
// class _CustomDropdownMenuExampleState extends State<CustomDropdownMenuExample> {
//   List<String> dropdownItems = ['Accepted', 'Ongoing', 'Completed', 'Canceled'];
//   String selectedText = 'Accepted';
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//         child: DropdownButtonFormField<String>(
//           value: selectedText,
//           onChanged: (newValue) {
//             setState(() {
//               selectedText = newValue!;
//             });
//           },
//           items: dropdownItems.map((String item) {
//             return DropdownMenuItem<String>(
//               value: item,
//               child: SecondaryText(
//                 text: item,
//               ),
//             );
//           }).toList(),
//
//           // Customizing the appearance using decoration
//           decoration: InputDecoration(
//             border: OutlineInputBorder( // Border Color
//               borderSide: BorderSide(color: Colors.blue),
//             ),
//             enabledBorder: OutlineInputBorder( // Border Color when enabled
//               borderSide: BorderSide(color: Colors.blue),
//             ),
//             focusedBorder: OutlineInputBorder( // Border Color when focused
//               borderSide: BorderSide(color: Colors.blue),
//             ),
//             fillColor: Colors.grey[200], // Background Color
//             filled: true,
//             hintStyle: TextStyle(color: Colors.black), // Text Color
//           ),
//         ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// class CustomDropdownMenuExample extends StatefulWidget {
//   @override
//   _CustomDropdownMenuExampleState createState() => _CustomDropdownMenuExampleState();
// }
//
// class _CustomDropdownMenuExampleState extends State<CustomDropdownMenuExample> {
//   List<String> dropdownItems = [
//     'Accepted',
//     'Ongoing', 'Completed', 'Canceled'];
//   String selectedText ='Accepted';
//   bool isDropdownOpen = false;
//
//   void toggleDropdown() {
//     setState(() {
//       isDropdownOpen = !isDropdownOpen;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 130,
//       child: Stack(
//         children: [
//           DropdownButtonFormField<String>(
//             value: selectedText,
//             onChanged: (newValue) {
//               setState(() {
//                 selectedText;
//               });
//             },
//             onTap: toggleDropdown,
//             items: dropdownItems.map((String item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(item),
//               );
//             }).toList(),
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blue),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blue),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blue),
//               ),
//               filled: true,
//               fillColor: Colors.grey[200],
//             ),
//           ),
//           if (isDropdownOpen)
//             Positioned(
//               top: -400, // Adjust the position of the dropdown menu list
//               right: 0, // Adjust the position of the dropdown menu list
//               left: 0, // Adjust the position of the dropdown menu list
//               child: Container(
//                 color: Colors.grey[200],
//                 child: Column(
//                   children: dropdownItems.map((String item) {
//                     return InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectedText = item;
//                           isDropdownOpen = false;
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                         child: Text(item),
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
//
//


// import 'package:flutter/material.dart';
//
// class CustomDropdownMenuExample extends StatefulWidget {
//   @override
//   _CustomDropdownMenuExampleState createState() => _CustomDropdownMenuExampleState();
// }
//
// class _CustomDropdownMenuExampleState extends State<CustomDropdownMenuExample> {
//   List<String> dropdownItems = [
//     'Accepted',
//     'Ongoing',
//     'Completed',
//     'Canceled',
//   ];
//   String selectedText = 'Accepted';
//   bool isDropdownOpen = false;
//
//   void toggleDropdown() {
//     setState(() {
//       isDropdownOpen = !isDropdownOpen;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 130,
//       decoration: BoxDecoration( // Apply decoration to the container
//         border: Border.all(color: Colors.blue),
//         borderRadius: BorderRadius.circular(8.0),
//         color: Colors.grey[200],
//       ),
//       child: Stack(
//         children: [
//           DropdownButton<String>(
//             value: selectedText,
//             onChanged: (newValue) {
//               setState(() {
//                 selectedText = newValue!;
//               });
//             },
//             onTap: toggleDropdown,
//             items: dropdownItems.map((String item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(item),
//               );
//             }).toList(),
//             icon: Icon(Icons.arrow_drop_down),
//             underline: Container(
//               height: 0,
//               color: Colors.transparent,
//             ),
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 16,
//             ),
//           ),
//           if (isDropdownOpen)
//             Positioned(
//               top: -400,
//               right: 0,
//               left: 0,
//               child: Container(
//                 color: Colors.grey[200],
//                 child: Column(
//                   children: dropdownItems.map((String item) {
//                     return InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectedText = item;
//                           isDropdownOpen = false;
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                         child: Text(item),
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';

class TwoContainerExample extends StatefulWidget {
  @override
  _TwoContainerExampleState createState() => _TwoContainerExampleState();
}

class _TwoContainerExampleState extends State<TwoContainerExample> {
  List<String> textList = ['Ongoing', 'Completed', 'Canceled',];
  String selectedText = 'Accepted';
  bool isFirstContainerVisible = false;

  void toggleFirstContainer() {
    setState(() {
      isFirstContainerVisible = !isFirstContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: [
            Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isFirstContainerVisible)
                        Container(
                          width: 130,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColor.primaryColor),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ListView.builder(
                            itemCount: textList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: SecondaryText(
                                  size: 14,
                                    color: AppColor.primaryColor,
                                    text: textList[index]),
                                onTap: () {
                                  setState(() {
                                    selectedText = textList[index];
                                    isFirstContainerVisible = false;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: toggleFirstContainer,
                        child: Container(
                          width: 130,
                          height: 35,
                          decoration: BoxDecoration(
                            color: AppColor.secondaryColor,
                            border: Border.all(color:AppColor.primaryColor),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SecondaryText(
                                  size: 14,
                                   text: selectedText,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),

      ],
    );
  }
}


