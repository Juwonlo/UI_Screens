import 'package:flutter/material.dart';
import 'package:ui_screens/screen_one/constant.dart';
import 'package:intl/intl.dart';



class RowDropDown extends StatefulWidget {
  const RowDropDown({Key? key}) : super(key: key);

  @override
  State<RowDropDown> createState() => _RowDropDownState();
}

class _RowDropDownState extends State<RowDropDown> {
  String? selectedMonth;
  int? selectedYear;

  List<int> yearsList = List.generate(10, (index) => DateTime.now().year - index);

  bool isMonthExpanded = false;
  bool isYearExpanded = false;

  @override
  void initState() {
    super.initState();
    selectedMonth = _getMonthName(DateTime.now().month);
  }

  String _getMonthName(int month) {
    return DateFormat('MMMM').format(DateTime(DateTime.now().year, month));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100,
                height: 30,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Monthly',
                    style: TextStyle(
                      color: AppColor.secondaryColor,
                    ),
                    ),
                  ),
              ),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColor.extraColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Yearly',
                    style: TextStyle(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Column(
        children: <Widget>[
        Container(
          //alignment: Alignment.center,
          height: 40,
          width: 153,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.primaryColor,
          ),
          child: Align(
            alignment: Alignment.center,
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 0, left: 13, right: 5,bottom: 0),
              title: Text('Month: $selectedMonth',
              style: TextStyle(
                fontSize: 14,
                color: AppColor.secondaryColor,
              ),
              ),
              trailing: Icon(isMonthExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: AppColor.secondaryColor,
              ),
              onTap: () {
                setState(() {
                  isMonthExpanded = !isMonthExpanded;
                });
              },
            ),
          ),
        ),
        if (isMonthExpanded) _buildMonthList(),
        ],
        ),
            Column(
                children: <Widget>[
                  Container(
                    height: 35,
                     width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.extraColor,
                    ),
                    child: Center(
                      child: ListTile(
                        contentPadding: EdgeInsets.only(top: 0, left: 13, right: 5,),
                        title: Text('Year: ${selectedYear ?? "Select"}',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        trailing: Icon(isYearExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                        onTap: () {
                          setState(() {
                            isYearExpanded = !isYearExpanded;
                          });
                        },
                      ),
                    ),
                  ),
                  if (isYearExpanded) _buildYearList(),
                ],
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildMonthList() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 150,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: List<Widget>.generate(12, (index) {
            String monthName = _getMonthName(index + 1);
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(monthName),
              onTap: () {
                setState(() {
                  selectedMonth = monthName;
                  isMonthExpanded = false;
                });
              },
            );
          }),
        ),
      ),
    );
  }


  Widget _buildYearList() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 150,
        // decoration: BoxDecoration(
        //   border: Border.all(width: 2, color: Colors.black),
        // ),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: yearsList.map((year) {
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(year.toString()),
              onTap: () {
                setState(() {
                  selectedYear = year;
                  isYearExpanded = false;
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }


}




// class RowDropDown extends StatefulWidget {
//   const RowDropDown({Key? key}) : super(key: key);
//
//   @override
//   State<RowDropDown> createState() => _RowDropDownState();
// }
//
// class _RowDropDownState extends State<RowDropDown> {
//   String selectedMonth;
//
//   bool isExpanded = false;
//
//   @override
//   void initState() {
//     super.initState();
//     selectedMonth = _getMonthName(DateTime.now().month);
//   }
//
//   String _getMonthName(int month) {
//     return DateFormat('MMMM').format(DateTime(DateTime.now().year, month));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Container(
//           height: 45,
//           width: 150,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: AppColor.extraColor,
//           ),
//           child: Center(
//             child: ListTile(
//               contentPadding: EdgeInsets.only(top: 2, left: 13, right: 5),
//               title: Text('Month: $selectedMonth'),
//               trailing: Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
//               onTap: () {
//                 setState(() {
//                   isExpanded = !isExpanded;
//                 });
//               },
//             ),
//           ),
//         ),
//         if (isExpanded) _buildMonthList(),
//       ],
//     );
//   }
//
//
// }
