import 'dart:collection';
import 'dart:convert';

//import 'package:device_info/device_info.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/home/home.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/login/login.dart';
import 'package:hostel_management_system/Screens/profile/changepassworduser.dart';
import 'dart:io';

//var androidInfo1 = DeviceInfoPlugin().androidInfo;

// class GetInfo {
//   Future<HashMap<String, String>> getInfo () async {
//     var androidInfo = await DeviceInfoPlugin().androidInfo;
//     var release = androidInfo.version.release;
//     var sdkInt = androidInfo.version.sdkInt;
//     var manufacturer = androidInfo.manufacturer;
//     var model = androidInfo.model;
//     //print('Android $release (SDK $sdkInt), $manufacturer $model');
//     HashMap<String, String> info = new HashMap();
//     Map<String, String> info1 = {'osVer': release, 'sdkVer': sdkInt.toString(), 'manuInfo': manufacturer, 'modelInfo': model};
//     info.addAll(info1);
//     //print(info);
//     return info;
//   }
// }

class AppInfo extends StatelessWidget {
  // This widget is the root of your application.
  HashMap<String, String> info2 = new HashMap();

  AppInfo ({required this.info2});

  @override
  Widget build(BuildContext context) {
    print(info2);

    Size size = MediaQuery.of(context).size;

    Text naviHome = Text (
      "App info",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'APP INFO',
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
                        width: 270,
                        child: Text (
                          "ABOUT APP",
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

                Container (
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  //padding: EdgeInsets.all(20),
                  //color: Colors.blue,
                  height: 200,
                  child: Image.asset (
                    "assets/images/main.png",
                  ),
                ),

                Container (
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  //padding: EdgeInsets.all(20),
                  //color: Colors.blue,
                  child: Text (
                    "HOSTEL MANAGEMENT",
                    style: TextStyle (
                      fontFamily: "QuickSandBold",
                      fontSize: 35,
                      color: Color(0xFF00ADFF),
                    ),
                  )
                ),

                SizedBox(height: size.height * 0.05),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  color: Color(0x1000ADFF),
                  height: 50,
                  child: Row (
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20),
                        width: 180,
                        //color: Colors.white,
                        child: Text (
                          "APP VERSION",
                          style: TextStyle (
                            fontSize: 20,
                            fontFamily: "QuickSandMedium",
                            color: Color(0xFF0085C3),
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        width: 170,
                        //color: Colors.pinkAccent,
                        child: Text (
                          "0.1.5",
                          style: TextStyle (
                            fontSize: 20,
                            fontFamily: "QuickSandBold",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: size.height * 0.01),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  color: Color(0x1000ADFF),
                  height: 50,
                  child: Row (
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20),
                        width: 180,
                        //color: Colors.white,
                        child: Text (
                          "OS VERSION",
                          style: TextStyle (
                            fontSize: 20,
                            fontFamily: "QuickSandMedium",
                            color: Color(0xFF0085C3),
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        width: 170,
                        //color: Colors.pinkAccent,
                        child: Text (
                          info2['osVer'].toString(),
                          style: TextStyle (
                            fontSize: 20,
                            fontFamily: "QuickSandBold",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: size.height * 0.01),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  color: Color(0x1000ADFF),
                  height: 50,
                  child: Row (
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20),
                        width: 180,
                        //color: Colors.white,
                        child: Text (
                          "DEVICE INFO",
                          style: TextStyle (
                            fontSize: 20,
                            fontFamily: "QuickSandMedium",
                            color: Color(0xFF0085C3),
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        width: 170,
                        //color: Colors.pinkAccent,
                        child: Text (
                          info2['manuInfo'].toString().toUpperCase() + " " + info2['modelInfo'].toString(),
                          style: TextStyle (
                            fontSize: 15,
                            fontFamily: "QuickSandBold",
                          ),
                        ),
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
