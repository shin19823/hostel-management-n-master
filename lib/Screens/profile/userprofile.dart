import 'dart:collection';

//import 'package:device_info/device_info.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/profile/appinfo.dart';
import 'package:hostel_management_system/Screens/profile/setting.dart';
import 'package:hostel_management_system/Screens/profile/userinfo.dart';

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

class User extends StatelessWidget {
  // This widget is the root of your application.

  //GetInfo g = GetInfo();
  HashMap<String, String> info = new HashMap();

  @override
  Widget build(BuildContext context) {
    //g.getInfo().then((value) => info = value);

    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "User",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'USER',
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
                        bottomLeft: Radius.circular(75.00),
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
                        margin: EdgeInsets.only(left: 30, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: size.width * 0.8,
                        child: Text (
                          "YOUR PROFILE",
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
                  height: 250.0,
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
                    height: 250.0,
                    width: size.width * 10,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(75.0),
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
                      padding: EdgeInsets.all(10),
                      //color: Colors.lightBlueAccent,
                      child: Column (
                        children: <Widget>[
                          Container(
                            child: Icon (
                              Icons.account_circle,
                              size: 100,
                              color: Color(0xFF0085C3),
                            ),
                          ),

                          SizedBox(height: size.width * 0.03,),

                          GestureDetector(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfo()))
                            },
                            child: Container(
                              child: Text (
                                "YOUR NAME",
                                style: TextStyle (
                                  fontFamily: "QuickSandBold",
                                  fontSize: 40,
                                  color: Color(0xFF00ADFF),
                                ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingApp()))
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 80,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(20.00),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(20, 0, 173, 255),
                              Color.fromARGB(5, 0, 173, 255)
                            ]
                        )
                    ),
                    child: Row (
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          height: 60,
                          width: 60,
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(20.00),
                              gradient: new LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 255, 255, 255),
                                    Color.fromARGB(2555, 255, 255, 255)
                                  ]
                              )
                          ),
                          child: Icon(
                            Icons.settings,
                            size: 40,
                            color: Color(0xFF0085C3),
                          ),
                        ),

                        SizedBox(width: size.width * 0.05,),

                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text (
                            "SETTING",
                            style: TextStyle (
                              fontFamily: "QuickSandBold",
                              fontSize: 25,
                              color: Color(0xFF00ADFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.02),

                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 80,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(20.00),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(20, 0, 173, 255),
                              Color.fromARGB(5, 0, 173, 255)
                            ]
                        )
                    ),
                    child: Row (
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          height: 60,
                          width: 60,
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(20.00),
                              gradient: new LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 255, 255, 255),
                                    Color.fromARGB(2555, 255, 255, 255)
                                  ]
                              )
                          ),
                          child: Icon(
                            Icons.support_agent_rounded,
                            size: 40,
                            color: Color(0xFF0085C3),
                          ),
                        ),

                        //SizedBox(width: size.width * 0.05,),


                      ],
                    ),
                  ),
                ),
                // Container(
                //   alignment: Alignment.centerLeft,
                //   child: Text (
                //     "CUSTOMER SERVICE",
                //     style: TextStyle (
                //       fontFamily: "QuickSandBold",
                //       fontSize: 25,
                //       color: Color(0xFF00ADFF),
                //     ),
                //   ),
                // ),
                SizedBox(height: size.height * 0.02),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppInfo(info2: info,)));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 80,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(20.00),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(20, 0, 173, 255),
                              Color.fromARGB(5, 0, 173, 255)
                            ]
                        )
                    ),
                    child: Row (
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          height: 60,
                          width: 60,
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(20.00),
                              gradient: new LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 255, 255, 255),
                                    Color.fromARGB(2555, 255, 255, 255)
                                  ]
                              )
                          ),
                          child: Icon(
                            Icons.info_rounded,
                            size: 40,
                            color: Color(0xFF0085C3),
                          ),
                        ),

                        SizedBox(width: size.width * 0.05,),

                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text (
                            "ABOUT APP",
                            style: TextStyle (
                              fontFamily: "QuickSandBold",
                              fontSize: 25,
                              color: Color(0xFF00ADFF),
                            ),
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

                Text(
                  "@HM-2021",
                  style: TextStyle (
                    fontFamily: "QuickSand",
                    fontSize: 20,
                    color: Color(0xFF0085C3)
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        )
    );
  }
}
