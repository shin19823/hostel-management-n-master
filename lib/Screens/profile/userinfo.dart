import 'dart:core';
import 'dart:core';

import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/home/home.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';

class UserInfo extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "UserInfo",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'USER INFO',
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
                  height: 110.0,
                  width: size.width * 10,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.00),
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
                          Navigator.pop(context)
                        },
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: size.width * 0.7,
                        child: Text (
                          "YOUR PROFILE",
                          style: TextStyle (
                            fontSize: 30,
                            fontFamily: "QuicksandBold",
                            color: Colors.white,
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () => {

                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          //width: size.width * 0.05,
                          child: Icon (
                            Icons.edit,
                            size: 30,
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

                    child: Text (
                      "YOUR NAME",
                      style: TextStyle (
                        fontFamily: "QuickSandBold",
                        fontSize: 35,
                        color: Color(0xFF00ADFF),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                Container(
                  alignment: Alignment.center,
                  height: 500.0,
                  width: size.width * 0.95,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(10, 0, 133, 195),
                            Color.fromARGB(5, 0, 173, 255)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(10),

                  child: Column (
                    children: <Widget>[
                      RowUP().rowUPRow("PHONE NUMBER", "0918224597", 35),

                      SizedBox(height: size.height * 0.03),

                      DottedLine (
                        dashColor: Color(0xFF00ADFF),
                        lineThickness: 2,
                        dashGapLength: 5,
                        dashRadius: 10,
                        dashLength: 5,
                      ),

                      SizedBox(height: size.height * 0.02),

                      RowUP().rowUPRow("BIRTHDAY", "06/06/2000", 25),

                      SizedBox(height: size.height * 0.04),

                      DottedLine (
                        dashColor: Color(0xFF00ADFF),
                        lineThickness: 2,
                        dashGapLength: 5,
                        dashRadius: 10,
                        dashLength: 5,
                      ),

                      SizedBox(height: size.height * 0.02),

                      RowUP().rowUPRow("ADDRESS", "Long Thanh My Ward, Thu Duc City, Ho Chi Minh City", 20),

                      SizedBox(height: size.height * 0.04),

                      DottedLine (
                        dashColor: Color(0xFF00ADFF),
                        lineThickness: 2,
                        dashGapLength: 5,
                        dashRadius: 10,
                        dashLength: 5,
                      ),
                      SizedBox(height: size.height * 0.02),

                      RowUP().rowUPRow("JOIN DATE", "01/01/2022", 25),

                      SizedBox(height: size.height * 0.04),

                      DottedLine (
                        dashColor: Color(0xFF00ADFF),
                        lineThickness: 2,
                        dashGapLength: 5,
                        dashRadius: 10,
                        dashLength: 5,
                      ),

                      SizedBox(height: size.height * 0.02),

                    ],
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        )
    );
  }
}

class RowUP extends Row {
  Row rowUPRow (String title, String content, double textSize) {
    return Row(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: 180,
          margin: EdgeInsets.only(top: 20, left: 10),
          //color: Colors.blue,
          child: Text (
            title,
            style: TextStyle (
              fontFamily: "QuickSandBold",
              fontSize: 20,
            ),
          ),
        ),

        Container(
          alignment: Alignment.centerRight,
          width: 180,
          margin: EdgeInsets.only(top: 20, left: 0),
          //color: Colors.red,
          child: Text (
            content,
            style: TextStyle (
              fontFamily: "QuickSandBold",
              fontSize: textSize,
              color: Color(0xFF00ADFF),
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
