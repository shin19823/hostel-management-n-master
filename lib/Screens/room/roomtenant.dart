import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/Room/Room.dart';
import 'package:hostel_management_system/Screens/room/roomdetail.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RoomTenant extends StatelessWidget {
  // This widget is the root of your application.
  String roomNo;
  RoomTenant ({required Key key, required this.roomNo}) : super(key: key);

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RoomDetail(key: new Key("room"), roomNo: roomNo)))
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

                //SizedBox(height: size.height * 0.03),

                Container (
                  alignment: Alignment.center,
                  height: 400,
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
                              "TENANT NAME",
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
                              "NGUYEN VAN A",
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
                              "BIRTHDAY",
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
                              "01/01/1999",
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
                              "PHONE NUMBER",
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
                              "0912345678",
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
                              "ID CARD",
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
                              "123456789",
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
                              "START DAY",
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
                              "25/06/2021",
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
