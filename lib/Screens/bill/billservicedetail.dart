import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/Room/Room.dart';
import 'package:hostel_management_system/Screens/room/roomdetail.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:hostel_management_system/Screens/bill/billdetail.dart';

class BillServiceDetail extends StatelessWidget {
  // This widget is the root of your application.
  String roomNo;
  String service;
  String month;
  BillServiceDetail ({required Key key, required this.roomNo, required this.service, required this.month}) : super(key: key);

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
                  height: 200.0,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BillDetail( roomNo: roomNo, month: month,)
                              )
                          )
                        },
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: 330,
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

                Text (
                  "BILL DETAIL",
                  style: TextStyle (
                    fontFamily: "QuickSandBold",
                    fontSize: 30,
                    color: Color(0xFF0085C3),
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: size.height * 0.03),

                Container (
                  alignment: Alignment.center,
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(20, 0, 173, 255),
                          Color.fromARGB(10, 0, 173, 255)
                        ]
                    ),
                  ),
                  padding: const EdgeInsets.all(10),

                  child: Column (
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Container (
                            child: Text (
                              "SERVICE",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20, left: 10),
                            width: 125,
                          ),

                          Container (
                            child: Text (
                              service,
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 20,
                                color: Color(0xFF0085C3),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            margin: EdgeInsets.only(top: 20, left: 0),
                            width: 240,
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.02),

                      Row (
                        children: <Widget>[
                          Container (
                            child: Text (
                              "INVOICE PERIOD",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20, left: 10),
                            width: 125,
                          ),

                          Container (
                            child: Text (
                              "01/10/2021 - 01/11/2021",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 20,
                                color: Color(0xFF0085C3),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            margin: EdgeInsets.only(top: 20, left: 0),
                            width: 240,
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.02),

                      if ((service == "WATER") || (service == "ELECTRICITY"))
                        Row (
                          children: <Widget>[
                            Container (
                              child: Text (
                                "OLD RECORD",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              margin: EdgeInsets.only(top: 20, left: 10),
                              width: 125,
                            ),

                            Container (
                              child: Text (
                                "xx",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 20,
                                  color: Color(0xFF0085C3),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              margin: EdgeInsets.only(top: 20, left: 0),
                              width: 240,
                            ),
                          ],
                        ),

                      SizedBox(height: size.height * 0.02),

                      if ((service == "WATER") || (service == "ELECTRICITY"))
                        Row (
                          children: <Widget>[
                            Container (
                              child: Text (
                                "NEW RECORD",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              margin: EdgeInsets.only(top: 20, left: 10),
                              width: 125,
                            ),

                            Container (
                              child: Text (
                                "yy",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 20,
                                  color: Color(0xFF0085C3),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              margin: EdgeInsets.only(top: 20, left: 0),
                              width: 240,
                            ),
                          ],
                        ),

                      SizedBox(height: size.height * 0.02),

                      if ((service == "WATER") || (service == "ELECTRICITY"))
                        Row (
                          children: <Widget>[
                            Container (
                              child: Text (
                                "QUANTITY",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              margin: EdgeInsets.only(top: 20, left: 10),
                              width: 125,
                            ),

                            Container (
                              child: Text (
                                "zz",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 20,
                                  color: Color(0xFF0085C3),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              margin: EdgeInsets.only(top: 20, left: 0),
                              width: 240,
                            ),
                          ],
                        ),

                      SizedBox(height: size.height * 0.02),

                      Row (
                        children: <Widget>[
                          Container (
                            child: Text (
                              "PRICE",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20, left: 10),
                            width: 125,
                          ),

                          Container (
                            child: Text (
                              "000000",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 20,
                                color: Color(0xFF0085C3),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            margin: EdgeInsets.only(top: 20, left: 0),
                            width: 240,
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.02),

                      Row (
                        children: <Widget>[
                          Container (
                            child: Text (
                              "VAT",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20, left: 10),
                            width: 125,
                          ),

                          Container (
                            child: Text (
                              "10%",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 20,
                                color: Color(0xFF0085C3),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            margin: EdgeInsets.only(top: 20, left: 0),
                            width: 240,
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.02),

                      Row (
                        children: <Widget>[
                          Container (
                            child: Text (
                              "TOTAL",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20, left: 10),
                            width: 125,
                          ),

                          Container (
                            child: Text (
                              "000000",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 20,
                                color: Color(0xFF0085C3),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            margin: EdgeInsets.only(top: 20, left: 0),
                            width: 240,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
