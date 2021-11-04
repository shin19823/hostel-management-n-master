import 'package:dotted_line/dotted_line.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/room/roomdetail.dart';
import 'package:hostel_management_system/Screens/rule/rule.dart';

class RuleDetail extends StatelessWidget {
  // This widget is the root of your application.
  late String title;
  RuleDetail ({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Text naviHome = Text (
      "Notice",
      style: TextStyle (
          fontFamily: "QuickSand"
      ),
    );

    return MaterialApp(
        title: 'NOTICE BOARD',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Rule()))
                        },
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: size.width * 0.675,
                        child: Text (
                          title,
                          style: TextStyle (
                            fontSize: 20,
                            fontFamily: "QuicksandBold",
                            color: Colors.white,
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () => {}, //Edit notice
                        child: Container (
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(left: 0, top: 20, right: 10, bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          width: 50,
                          child: Icon (
                            Icons.edit,
                            color: Colors.white,
                            size: 35,
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
                    padding: const EdgeInsets.only(left: 0),

                    child: Text (
                      "DD/MM/YYYY",
                      style: TextStyle (
                        fontFamily: "QuickSandBold",
                        fontSize: 25,
                        color: Color(0xFF0085C3),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                  //color: Color(0xFF00ADFF),
                  padding: EdgeInsets.all(10),
                  child: Text (
                    "This is an important Rule\nPlease pay attention to this Rule\nRead this Rule carefully\nOK\n\n"
                        + "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9"
                        + "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9"
                        + "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9"
                        + "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9"
                        + "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9"
                        + "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9",
                    textAlign: TextAlign.left,
                    style: TextStyle (
                      fontFamily: "QuickSandBold",
                      fontSize: 20,
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
              ],
            ),
          ),
        )
    );
  }
}
