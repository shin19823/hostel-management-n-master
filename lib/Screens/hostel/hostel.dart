import 'dart:ui';

import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/profile/userprofile.dart';
import 'package:hostel_management_system/Screens/bill/bill.dart';
import 'package:hostel_management_system/Screens/bill/billdetail.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:hostel_management_system/Screens/notice/notice.dart';
import 'package:hostel_management_system/Screens/notice/noticedetail.dart';
import 'package:hostel_management_system/Screens/rule/rule.dart';

class Hostel extends StatelessWidget {
  // This widget is the root of your application.
  double hNotice = 70;
  String roomNo = "1";
  String month = "10";

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
                          ),
                          onTap: () => {
                            Navigator.pop(context)
                          },
                        ),

                        Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: 270,
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
                  ),
                ),

                SizedBox(height: size.height * 0.02),

                Row(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => User())),
                          },
                       child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                        ),
                          child: Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0, top: 0),
                          child: Row (
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: Text (
                                  "ROOM",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                      GestureDetector(
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => User())),
                          },
                        child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                        width: 100,
                        height: 30,
                        decoration: new BoxDecoration(
                        ),
                        child: Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0, top: 0),
                          child: Row (
                            children: <Widget>[

                              Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: Text (
                                  "001",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),

                    ]
                ),
                SizedBox(height: size.height * 0.02),

                Row (
                    children: <Widget>[
                      GestureDetector(
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => User())),
                          },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                        ),
                        child: Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0, top: 0),
                          child: Row (
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: Text (
                                  "START DATE",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),

                      GestureDetector(
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => User())),
                          },
                      child :Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                        width: 153,
                        height: 30,
                        decoration: new BoxDecoration(
                        ),
                        child: Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0, top: 0),
                          child: Row (
                            children: <Widget>[

                              Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: Text (
                                  "15/09/2021",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                    ]
                ),
                SizedBox(height: size.height * 0.02),

                Row (
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BillDetail( roomNo: roomNo, month: month))),
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(left: 30, top: 0, right: 0, bottom: 0),
                        width: 180,
                        height: 80,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(65, 0, 133, 195),
                                Color.fromARGB(65, 0, 173, 255)
                              ]
                          ),
                        ),
                        child: Container (
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0, top: 0),
                          child: Row (
                            children: <Widget>[
                              Container (
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10, right: 0, top: 0),
                                child: Icon (
                                  Icons.monetization_on_outlined,
                                  size: 60,
                                  color: Color(0xFFFF834A),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                                child: Text (
                                  "BILL",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(left: 60, top: 0, right: 0, bottom: 0),
                      width: 180,
                      height: 80,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(65, 0, 133, 195),
                              Color.fromARGB(65, 0, 173, 255)
                            ]
                        ),
                      ),
                      child: Container (
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 0, top: 0),
                        child: Row (
                          children: <Widget>[
                            Container (
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 10, right: 0, top: 0),
                              child: Icon (
                                Icons.build_circle_outlined,
                                size: 60,
                                color: Color(0xFFFF834A),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                              child: Text (
                                "SUPPORT",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
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

                //Notice board here
                Column(
                  children: <Widget>[
                    Container (
                      margin: EdgeInsets.only(left: 20),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container (
                            child: Text (
                              "NOTICE BOARD",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0085C3),
                              ),
                            ),
                            alignment: Alignment.topLeft,
                          ),

                          GestureDetector(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Notice())),
                            },
                            child: Container (
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(left: 170),
                              child: Text (
                                "ALL",
                                style: TextStyle (
                                  fontSize: 20,
                                  color: Colors.lightBlue,
                                  fontFamily: "QuickSandBold",
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeDetail(key: new Key("detail"), title: "NOTICE NUMBER 9"))),
                      },
                      child: Container (
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        height: hNotice,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(50, 0, 173, 255),
                                Color.fromARGB(0, 0, 173, 255)
                              ]
                          ),
                        ),
                        child: Column (
                          children: <Widget>[
                            Container (
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 20, top: 10),
                              child: Text (
                                "NOTICE NUMBER 9",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 25,
                                ),
                              ),
                            ),

                            Container (
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text (
                                "DD/MM/YYYY",
                                style: TextStyle (
                                  fontFamily: "QuickSand",
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeDetail(key: new Key("detail"), title: "NOTICE NUMBER 8")));
                      },
                      child: Container (
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        height: hNotice,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(50, 0, 173, 255),
                                Color.fromARGB(0, 0, 173, 255)
                              ]
                          ),
                        ),
                        child: Column (
                          children: <Widget>[
                            Container (
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 20, top: 10),
                              child: Text (
                                "NOTICE NUMBER 8",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 25,
                                ),
                              ),
                            ),

                            Container (
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text (
                                "DD/MM/YYYY",
                                style: TextStyle (
                                  fontFamily: "QuickSand",
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector (
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeDetail(key: new Key("detail"), title: "NOTICE NUMBER 7"))),
                      },
                      child: Container (
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        height: hNotice,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(50, 0, 173, 255),
                                Color.fromARGB(0, 0, 173, 255)
                              ]
                          ),
                        ),
                        child: Column (
                          children: <Widget>[
                            Container (
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 20, top: 10),
                              child: Text (
                                "NOTICE NUMBER 7",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 25,
                                ),
                              ),
                            ),

                            Container (
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.topLeft,
                              child: Text (
                                "DD/MM/YYYY",
                                style: TextStyle (
                                  fontFamily: "QuickSand",
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Rule()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                    height: 90,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(70, 0, 133, 195),
                            Color.fromARGB(50, 0, 173, 255)
                          ]
                      ),
                    ),
                    child: Container (
                        margin: EdgeInsets.only(top: 0, left: 10),
                        child: Row (
                          children: <Widget> [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.book_outlined),
                              iconSize: 70,
                              color: Color(0xFF00ADFF),
                            ),
                            Container (
                              margin: EdgeInsets.only(top: 0, left: 5),
                              child: Text (
                                "HOSTEL RULE",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.05),

              ],
            ),
          ),
        )
    );
  }
}
