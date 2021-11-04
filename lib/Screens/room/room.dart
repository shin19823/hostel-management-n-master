import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/room/roomdetail.dart';

class Room extends StatelessWidget {
  // This widget is the root of your application.

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
                  ),
                ),

                Column(
                  children: <Widget> [
                    for (int i = 1; i < 6; i++)
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RoomDetail(roomNo: '$i', key: new Key("room"),),
                            )
                          ),
                        },
                        child: Container (
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                          height: 50,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(50, 0, 173, 255),
                                  Color.fromARGB(0, 0, 173, 255)
                                ]
                            ),
                          ),
                          child: Row (
                            children: <Widget>[
                              Container (
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 20, top: 0),
                                child: Text (
                                  "ROOM: R00$i",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),

                Container (
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
                  height: 70,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
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
                            "ADD A NEW ROOM",
                            style: TextStyle (
                              fontFamily: "QuickSand",
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
