import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/notice/noticedetail.dart';
import 'package:hostel_management_system/Screens/room/roomdetail.dart';
import 'package:hostel_management_system/Screens/rule/ruledetail.dart';

class Rule extends StatelessWidget {
  // This widget is the root of your application.
  //late String hostelName;
  //Notice ({required Key key, required this.hostelName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "Rule",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'RULE',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Hostel())),
                        },
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: size.width * 0.675,
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

                    child: Text (
                      "HOSTEL RULE",
                      style: TextStyle (
                        fontFamily: "QuickSandBold",
                        fontSize: 35,
                        color: Color(0xFF0085C3),
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                                builder: (context) => RuleDetail(key: new Key("detail"), title: "RULE $i"), //Call rule detail
                              )
                          ),
                        },
                        child: Container (
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                          height: 75,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(25, 0, 173, 255),
                                  Color.fromARGB(10, 0, 173, 255)
                                ]
                            ),
                          ),
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column (
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container (
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(left: 20, top: 10),
                                    //color: Colors.red,
                                    width: 200,
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text (
                                      "RULE $i",
                                      style: TextStyle (
                                        fontFamily: "QuickSandBold",
                                        fontSize: 25,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),

                                  Container (
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(top: 5, left: 0),
                                    width: 150,
                                    //color: Colors.red,
                                    child: Text (
                                      "DD/MM/YYYY",
                                      style: TextStyle (
                                        fontFamily: "QuickSand",
                                        fontSize: 17,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(width: size.width * 0.1,),

                              /*
                              GestureDetector(
                                onTap: () => {print("EDIT RULE"),}, //Edit rule
                                child: Container (
                                  alignment: Alignment.centerRight,
                                  //color: Colors.red,
                                  width: 100,
                                  padding: EdgeInsets.all(5),
                                  child: Icon (
                                    Icons.edit,
                                    size: 35,
                                    color: Color(0xFF00ADFF),
                                  ),
                                ),
                              ),

                               */
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
              ],
            ),
          ),
        )
    );
  }
}