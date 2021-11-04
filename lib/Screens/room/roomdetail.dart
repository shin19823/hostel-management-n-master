import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/Room/Room.dart';
import 'package:hostel_management_system/Screens/room/roomqr.dart';
import 'package:hostel_management_system/Screens/room/roomtenant.dart';
//import 'package:hostel_management_system/Screens/hostel/hostel.dart';

class RoomDetail extends StatelessWidget {
  // This widget is the root of your application.
  String roomNo;
  RoomDetail ({required Key key, required this.roomNo}) : super(key: key);

  TextEditingController rT = TextEditingController(text: "2500000");
  TextEditingController rD = TextEditingController(text: "Comfortable, convenient, large, fresh air.");

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Room()))
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

                      Container (
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
                        child: GestureDetector (
                          onTap: () {print("edit room");},
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
                  height: 400,
                  width: 350,
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
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10, top: 20, right: 20),
                            child: Text (
                              "ROOM TYPE",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 25,
                                color: Color(0xFF0085C3),
                              ),
                            ),
                          ),

                          Container (
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 10, top: 20),
                            width: 160,
                            child: TextField (
                              controller: rT,
                              readOnly: true,
                              textAlign: TextAlign.center,
                              decoration: new InputDecoration(
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  borderSide: new BorderSide(
                                    color: Color(0xFF00ADFF),
                                    width: 20,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: "QuickSandBold",
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.01),

                      Column (
                        children: <Widget>[
                          Container (
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10, top: 20, right: 20),
                            child: Text (
                              "DESCRIPTION",
                              style: TextStyle (
                                fontFamily: "QuickSandBold",
                                fontSize: 25,
                                color: Color(0xFF0085C3),
                              ),
                            ),
                          ),

                          Container (
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(right: 10, top: 20, left: 10),
                            width: 300,
                            height: 200,
                            child: TextField (
                              controller: rD,
                              readOnly: true,
                              textAlign: TextAlign.left,
                              maxLines: 20,
                              decoration: new InputDecoration(
                                fillColor: Colors.white,
                                //isDense: true,
                                //contentPadding: EdgeInsets.all(80),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  borderSide: new BorderSide(
                                    color: Color(0xFF00ADFF),
                                    width: 20,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: "QuickSandBold",
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
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

                Container (
                  alignment: Alignment.center,
                  //margin: EdgeInsets.only(left: 30),
                  child: Text (
                    "TENANT INFORMATION",
                    style: TextStyle (
                      fontSize: 30,
                      fontFamily: "QuickSandBold",
                      color: Color(0xFF0085C3),
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                GestureDetector (
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoomTenant(roomNo: '$roomNo', key: new Key("room"),),
                        )
                    ),
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(10, 0, 173, 255),
                            Color.fromARGB(5, 0, 173, 255)
                          ]
                      ),
                    ),
                    padding: const EdgeInsets.all(10),

                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container (
                          margin: EdgeInsets.only(left: 20),
                          child: Icon (
                            Icons.account_circle_sharp,
                            size: 75,
                            color: Color(0xFF0085C3),
                          ),
                        ),

                        SizedBox(width: size.width * 0.05),

                        Container (
                          alignment: Alignment.center,
                          //margin: EdgeInsets.only(left: 20, top: 30),
                          child: Column (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container (
                                alignment: Alignment.center,
                                child: Text (
                                  "NGUYEN VAN A",
                                  style: TextStyle (
                                    fontFamily: "QuickSandBold",
                                    fontSize: 25,
                                    color: Color(0xFF0085C3),
                                  ),
                                ),
                              ),

                              SizedBox(height: size.height * 0.01),

                              Container (
                                alignment: Alignment.center,
                                child: Text (
                                  "0912345678",
                                  style: TextStyle (
                                    fontFamily: "QuickSand",
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

                Container (
                  alignment: Alignment.center,
                  width: 350,
                  height: 80,
                  child: RaisedButton.icon (
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RoomQR(roomNo: '$roomNo', key: new Key("roomQR"),),
                          )
                      ),
                    },
                    shape: RoundedRectangleBorder (
                        borderRadius: BorderRadius.all (
                            Radius.circular(10.0)
                        )
                    ),
                    label: Text (
                      "SHOW ROOM QR CODE",
                      style: TextStyle (
                        color: Colors.white,
                        fontFamily: "QuickSandBold",
                        fontSize: 25,
                      ),
                    ),
                    icon: Icon (
                      Icons.qr_code_sharp,
                      color: Colors.white,
                      size: 60,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Color(0xFF00ADFF),
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
