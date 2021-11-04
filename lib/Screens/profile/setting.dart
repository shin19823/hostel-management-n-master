import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/home/home.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/login/login.dart';
import 'package:hostel_management_system/Screens/profile/changepassworduser.dart';

class SettingApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "Setting",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'SETTING',
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
                          "SETTING",
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

                SizedBox(height: size.height * 0.03),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePasswordUser(), //Call notice detail
                        )
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    width: size.width * 0.95,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(20, 0, 133, 195),
                              Color.fromARGB(10, 0, 173, 255)
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row (
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width * 0.7,
                          //color: Colors.pinkAccent,
                          child: Text (
                            "CHANGE PASSWORD",
                            style: TextStyle (
                              fontFamily: "QuickSandBold",
                              color: Color(0xFF0085C3),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                            alignment: Alignment.centerRight,
                            width: size.width * 0.2,
                            //color: Colors.blue,
                            child: Icon (
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: Color(0xFF00ADFF),
                            )
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.02),

                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    width: size.width * 0.95,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(20, 0, 133, 195),
                              Color.fromARGB(10, 0, 173, 255)
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row (
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width * 0.5,
                          //color: Colors.pinkAccent,
                          child: Text (
                            "LANGUAGE",
                            style: TextStyle (
                              fontFamily: "QuickSandBold",
                              color: Color(0xFF0085C3),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container (
                          alignment: Alignment.centerRight,
                          width: size.width * 0.325,
                          //color: Colors.pinkAccent,
                          child: Text (
                            "English",
                            style: TextStyle (
                              fontFamily: "QuickSand",
                              fontSize: 15,
                            ),
                          ),
                        ),

                        Container(
                            alignment: Alignment.centerRight,
                            width: size.width * 0.075,
                            //color: Colors.blue,
                            child: Icon (
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: Color(0xFF00ADFF),
                            )
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.1),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  child: RaisedButton(
                    onPressed: () => {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.5,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 131, 74),
                                Color.fromARGB(255, 255, 177, 31)
                              ]
                          )
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "LOGOUT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "QuickSandBold",
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
