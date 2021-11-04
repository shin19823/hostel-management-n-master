import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/Room/Room.dart';
import 'package:hostel_management_system/Screens/bill/bill.dart';
import 'package:hostel_management_system/Screens/room/roomqr.dart';
import 'package:hostel_management_system/Screens/room/roomtenant.dart';
//import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:flutter/src/material/dropdown.dart';

import 'billdetail.dart';

class BillRoom extends StatefulWidget {
  // This widget is the root of your application.
  String roomNo;
  BillRoom ({required Key key, required this.roomNo}) : super(key: key);

  @override
  _BillRoom createState() => _BillRoom(key: new Key("room"), roomNo: roomNo);
}

class _BillRoom extends State<BillRoom> {
  String roomNo;
  _BillRoom ({required Key key, required this.roomNo}) : super();

  DateTime nowD = new DateTime.now();

  var dropdownValueN = "2021";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "Bill of a room",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    //dropdownValueN = nowD.year.toString();

    return MaterialApp(
        title: 'BILL OF A ROOM',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF00ADFF),
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold (
          backgroundColor: Colors.white,

          body: SingleChildScrollView (
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 100.0,
                  width: size.width * 10,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                      ),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 0, 133, 195),
                            Color.fromARGB(255, 0, 173, 255)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),

                  child: Row (
                    children: <Widget>[
                      GestureDetector (
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20, top: 20, right: 0, bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon (
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Bill()))
                        },
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: 290,
                        child: Text (
                          "HOSTEL ABC",
                          style: TextStyle (
                            fontSize: 30,
                            fontFamily: "QuicksandBold",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //SizedBox(height: size.height * 0.03),

                Container (
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 10,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                      ),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 0, 133, 195),
                            Color.fromARGB(255, 0, 173, 255)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),

                  child: Container (
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 10,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.0),
                        ),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 255, 255),
                              Color.fromARGB(255, 255, 255, 255)
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(0),

                    child: Container (
                      alignment: Alignment.center,
                      child: Text (
                        "ROOM 00$roomNo",
                        style: TextStyle (
                          fontFamily: "QuickSandBold",
                          fontSize: 40,
                          color: Color(0xFF00ADFF),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                Container (
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                  height: 70,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(20, 0, 133, 195),
                          Color.fromARGB(20, 0, 173, 255)
                        ]
                    ),
                  ),
                  child: Container (
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 0, left: 70, right: 70),
                      child: Row (
                        children: <Widget> [
                          IconButton(
                            //alignment: Alignment.centerLeft,
                            onPressed: () {},
                            icon: Icon(Icons.add_circle),
                            iconSize: 50,
                            color: Color(0xFF00ADFF),
                          ),

                          Text (
                            "ADD A NEW BILL",
                            style: TextStyle (
                              fontFamily: "QuickSand",
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                DottedLine (
                  dashColor: Color(0xFF00ADFF),
                  lineThickness: 2,
                  dashGapLength: 5,
                  dashRadius: 10,
                  dashLength: 5,
                ),

                SizedBox(height: size.height * 0.03),

                Container (
                  width: 370,
                  //height: 60,
                  decoration: BoxDecoration(
                      color: Color(0x2000ADFF),
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10),
                  child: DropdownButton<String> (
                      value: dropdownValueN,
                      isExpanded: true,
                      icon: const Icon (
                          Icons.keyboard_arrow_down_rounded,
                          size: 50,
                      ),
                      //iconSize: 30,
                      elevation: 16,
                      style: const TextStyle (
                          color: Color(0xFF0085C3),
                          fontFamily: "QuickSandBold",
                          fontSize: 30,
                      ),
                      dropdownColor: Colors.white, //Color.fromARGB(200, 0, 133, 195),
                      underline: Container (
                        height: 0,
                        color: Color(0xFF00ADFF),
                      ),
                      onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueN = newValue!;
                          });
                      },
                      items: <String>['2021', '2020', '2019']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                DottedLine (
                  dashColor: Color(0xFF00ADFF),
                  lineThickness: 2,
                  dashGapLength: 5,
                  dashRadius: 10,
                  dashLength: 5,
                ),

                SizedBox(height: size.height * 0.03),

                //BillMonth
                Container (
                  child: Column (
                    children: <Widget>[
                      for (int i = 10; i >= 1; i--)
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BillDetail(roomNo: roomNo, month: '$i', /*key: new Key("room"),*/),
                                )
                            ),
                          },
                          child: Container (
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                            height: 50,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: new LinearGradient(
                                  colors: [
                                    Color.fromARGB(50, 0, 173, 255),
                                    Color.fromARGB(25, 0, 173, 255)
                                  ]
                              ),
                            ),
                            child: Row (
                              children: <Widget>[
                                Container (
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 20, top: 0),
                                  width: 300,
                                  child: Text (
                                    "$i/2021",
                                    style: TextStyle (
                                      fontFamily: "QuickSandBold",
                                      fontSize: 25,
                                    ),
                                  ),
                                ),

                                Container (
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(left: 0, top: 0, right: 5),
                                  child: Icon (
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                DottedLine (
                  dashColor: Color(0xFF00ADFF),
                  lineThickness: 2,
                  dashGapLength: 5,
                  dashRadius: 10,
                  dashLength: 5,
                ),

                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        )
    );
  }
}
