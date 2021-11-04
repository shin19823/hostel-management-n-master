import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';

class Home extends StatelessWidget {
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
        bottomNavigationBar: FancyBottomBar(
          items: [
            FancyItem(
              textColor: Colors.orange,
              title: 'HOME',
              icon: Icon(Icons.home),
            ),
            FancyItem(
              textColor: Colors.lightBlue,
              title: 'YOU',
              icon: Icon(Icons.account_circle),
            ),
          ],
          onItemSelected: (index) {
            print(index);
          },
        ),

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

                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, top: 20, right: 0, bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text (
                    "HOSTEL MANAGEMENT",
                    style: TextStyle (
                      fontSize: 30,
                      fontFamily: "QuicksandBold",
                      color: Colors.white,
                    ),
                  ),
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

              SizedBox(height: size.height * 0.00),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                height: 120,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(55, 0, 133, 195),
                          Color.fromARGB(55, 0, 173, 255)
                        ]
                    ),
                ),
                child: GestureDetector (
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hostel()))
                  },
                  child: Container (
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Column (
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text (
                            "HOSTEL ABC",
                            style: TextStyle (
                              fontFamily: "QuickSandBold",
                              fontSize: 40,
                            ),
                          ),
                        ),

                        SizedBox(height: size.height * 0.01),

                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text (
                            "Thu Duc City, Ho Chi Minh City",
                            style: TextStyle (
                              fontSize: 20,
                              fontFamily: "QuickSand"
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.03),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                height: 120,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(55, 0, 133, 195),
                        Color.fromARGB(55, 0, 173, 255)
                      ]
                  ),
                ),
                child: Container (
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Column (
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20),
                        child: Text (
                          "HOSTEL XYZ",
                          style: TextStyle (
                            fontFamily: "QuickSandBold",
                            fontSize: 40,
                          ),
                        ),
                      ),

                      SizedBox(height: size.height * 0.01),

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text (
                          "District 1, Ho Chi Minh City",
                          style: TextStyle (
                              fontSize: 20,
                              fontFamily: "QuickSand"
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.03),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                height: 120,
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
                  margin: EdgeInsets.only(top: 10),
                  child: Column (
                    children: <Widget> [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle),
                          iconSize: 50,
                          color: Color(0xFF00ADFF),
                      ),
                      Text (
                        "ADD A NEW HOSTEL",
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
