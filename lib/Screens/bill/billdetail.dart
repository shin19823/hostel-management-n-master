import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/Room/Room.dart';
import 'package:hostel_management_system/Screens/bill/billroom.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/room/roomqr.dart';
import 'package:hostel_management_system/Screens/room/roomtenant.dart';
import 'package:hostel_management_system/Screens/bill/billservicedetail.dart';
//import 'package:hostel_management_system/Screens/hostel/hostel.dart';

class BillDetail extends StatelessWidget {
  // This widget is the root of your application.
  String roomNo;
  String month;
  BillDetail ({ required this.roomNo, required this.month});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "Home",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'HOME',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Hostel()))
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

                DottedLine (
                  dashColor: Color(0xFF00ADFF),
                  lineThickness: 2,
                  dashGapLength: 5,
                  dashRadius: 10,
                  dashLength: 5,
                ),

                SizedBox(height: size.height * 0.03),

                Container(
                  alignment: Alignment.center,
                  height: 587,
                  width: 400,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(10.0)
                  ),

                  child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: TabBar(
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(text: "Not Paid", icon: Icon(Icons.list_alt_rounded)),
                          Tab(text: "Paid", icon: Icon(Icons.list_alt_outlined)),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: [


                        Container (
                          alignment: Alignment.center,
                          height: 450,
                          width: 400,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(5, 0, 173, 255),
                                  Color.fromARGB(0, 0, 173, 255)
                                ]
                            ),
                          ),
                          padding: const EdgeInsets.all(10),

                          child: Column (
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BillServiceDetail(roomNo: roomNo, service: "ROOM", month: month, key: new Key("room"),),
                                      )
                                  );
                                },
                                child: Container (
                                  alignment: Alignment.center,
                                  height: 70,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: new LinearGradient(
                                        colors: [
                                          Color.fromARGB(20, 0, 173, 255),
                                          Color.fromARGB(10, 0, 173, 255)
                                        ]
                                    ),
                                  ),
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row (
                                    children: <Widget>[
                                      Icon (
                                        Icons.list_alt_rounded,
                                        size: 30,
                                        color: Color(0xFF00ADFF),
                                      ),

                                      Container (
                                        child: Text (
                                          "ROOM",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 10),
                                        width: 160,
                                      ),

                                      Container (
                                        child: Text (
                                          "2500000",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 25,
                                            color: Color(0xFF0085C3),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 0),
                                        width: 160,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: size.height * 0.01),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BillServiceDetail(roomNo: roomNo, service: "WATER", month: month, key: new Key("room"),),
                                    ),
                                  );
                                },
                                child: Container (
                                  alignment: Alignment.center,
                                  height: 70,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: new LinearGradient(
                                        colors: [
                                          Color.fromARGB(20, 0, 173, 255),
                                          Color.fromARGB(10, 0, 173, 255)
                                        ]
                                    ),
                                  ),
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row (
                                    children: <Widget>[
                                      Icon (
                                        Icons.list_alt_rounded,
                                        size: 30,
                                        color: Color(0xFF00ADFF),
                                      ),

                                      Container (
                                        child: Text (
                                          "WATER",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 10),
                                        width: 160,
                                      ),

                                      Container (
                                        child: Text (
                                          "77000",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 25,
                                            color: Color(0xFF0085C3),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 0),
                                        width: 160,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: size.height * 0.01),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BillServiceDetail(roomNo: roomNo, service: "ELECTRICITY", month: month, key: new Key("room"),),
                                    ),
                                  );

                                },
                                child: Container (
                                  alignment: Alignment.center,
                                  height: 70,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: new LinearGradient(
                                        colors: [
                                          Color.fromARGB(20, 0, 173, 255),
                                          Color.fromARGB(10, 0, 173, 255)
                                        ]
                                    ),
                                  ),
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row (
                                    children: <Widget>[
                                      Icon (
                                        Icons.list_alt_rounded,
                                        size: 30,
                                        color: Color(0xFF00ADFF),
                                      ),

                                      Container (
                                        child: Text (
                                          "ELECTRICITY",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 10),
                                        width: 160,
                                      ),

                                      Container (
                                        child: Text (
                                          "300000",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 25,
                                            color: Color(0xFF0085C3),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 0),
                                        width: 160,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: size.height * 0.01),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BillServiceDetail(roomNo: roomNo, service: "OTHER FEE", month: month, key: new Key("room"),),
                                    ),
                                  );
                                },
                                child: Container (
                                  alignment: Alignment.center,
                                  height: 70,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: new LinearGradient(
                                        colors: [
                                          Color.fromARGB(20, 0, 173, 255),
                                          Color.fromARGB(10, 0, 173, 255)
                                        ]
                                    ),
                                  ),
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row (
                                    children: <Widget>[
                                      Icon (
                                        Icons.list_alt_rounded,
                                        size: 30,
                                        color: Color(0xFF00ADFF),
                                      ),

                                      Container (
                                        child: Text (
                                          "OTHER FEE",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 10),
                                        width: 160,
                                      ),

                                      Container (
                                        child: Text (
                                          "50000",
                                          style: TextStyle (
                                            fontFamily: "QuickSandBold",
                                            fontSize: 25,
                                            color: Color(0xFF0085C3),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        margin: EdgeInsets.only(top: 0, left: 0),
                                        width: 160,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: size.height * 0.03),

                              Container (
                                alignment: Alignment.center,
                                height: 100,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10.0),
                                  gradient: new LinearGradient(
                                      colors: [
                                        Color.fromARGB(30, 0, 173, 255),
                                        Color.fromARGB(20, 0, 173, 255)
                                      ]
                                  ),
                                ),
                                padding: EdgeInsets.all(20),
                                child: Row (
                                  children: <Widget>[
                                    Icon (
                                      Icons.monetization_on,
                                      size: 40,
                                      color: Color(0xFF0085C3),
                                    ),

                                    SizedBox(width: size.width * 0.02),

                                    Container (
                                      width: 90,
                                      child: Text (
                                        "TOTAL",
                                        style: TextStyle (
                                          fontFamily: "QuickSandBold",
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: size.width * 0.1),

                                    Container(
                                      width: 150,
                                      child: Text (
                                        "" + (2500000 + 77000 + 300000 + 50000).toString(),
                                        style: TextStyle (
                                          fontFamily: "QuickSandBold",
                                          fontSize: 30,
                                          color: Color(0xFF0085C3),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                    Container (
                      child: Column (
                        children: <Widget>[
                          for (int i = 10; i >= 4; i--)
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
                      ],
                    ),
                  ),
                ),),



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
