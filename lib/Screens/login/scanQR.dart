//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostel_management_system/Screens/home/home.dart';
import 'package:hostel_management_system/Screens/hostel/hostel.dart';
import 'package:hostel_management_system/Screens/register/register.dart';
import 'package:hostel_management_system/components/background.dart';
import 'package:hostel_management_system/Screens/forgotpassword/forgotpassword.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: SingleChildScrollView (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                margin: EdgeInsets.only(top: 0, bottom: 15, left: 0, right: 0),
                child: Text(
                  "HOSTEL MANAGEMENT \n Lodger side",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QuicksandBold',
                    color: Color(0xFF0085C3),
                    fontSize: 40
                  ),
                  textAlign: TextAlign.left,
                ),
              ),


              SizedBox(height: size.height * 0.2),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: RaisedButton(
                  onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Hostel()))},
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
                      "SCAN TO LOGIN ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "QuickSandBold",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



