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
                  "HOSTEL MANAGEMENT",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'QuicksandBold',
                      color: Color(0xFF0085C3),
                      fontSize: 40
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "QuickSandBold",
                      color: Color(0xFF00ADFF),
                      fontSize: 34
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: size.height * 0.02),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: phone,
                  decoration: InputDecoration(
                    labelText: "Phone number",
                  ),
                  style: TextStyle(
                    fontFamily: "QuickSandBold",
                    fontSize: 20,
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                ),
              ),

              SizedBox(height: size.height * 0.0001),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      labelText: "Password"
                  ),
                  style: TextStyle(
                    fontFamily: "QuickSandBold",
                    fontSize: 20,
                  ),
                  obscureText: true,
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: GestureDetector (
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()))
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                        fontFamily: "QuickSandBold",
                        fontSize: 15,
                        color: Color(0XFF2661FA)
                    ),
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.02),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hostel())),
                    // if (phone.text.length < 10) {
                    //   Fluttertoast.showToast(
                    //       msg: "PHONE MUST BE 10 NUMBERS",
                    //       toastLength: Toast.LENGTH_SHORT,
                    //       gravity: ToastGravity.BOTTOM,
                    //       timeInSecForIosWeb: 1,
                    //       backgroundColor: Colors.pinkAccent,
                    //       textColor: Colors.white,
                    //       fontSize: 15.0
                    //   ),
                    // }
                    // else {
                    //   if (pass.text.length < 8) {
                    //     Fluttertoast.showToast(
                    //         msg: "PASSWORD MUST BE 8 CHARACTERS",
                    //         toastLength: Toast.LENGTH_SHORT,
                    //         gravity: ToastGravity.BOTTOM,
                    //         timeInSecForIosWeb: 1,
                    //         backgroundColor: Colors.pinkAccent,
                    //         textColor: Colors.white,
                    //         fontSize: 15.0
                    //     ),
                    //   }
                    //   else {
                    //     if ((phone.text == "0918224597") && (pass.text == "12345678")) {
                    //       Navigator.push(context, MaterialPageRoute(builder: (context) => Hostel())),
                    //     }
                    //     else {
                    //       Fluttertoast.showToast(
                    //           msg: "WRONG PHONE NUMBER OR PASSWORD",
                    //           toastLength: Toast.LENGTH_SHORT,
                    //           gravity: ToastGravity.BOTTOM,
                    //           timeInSecForIosWeb: 1,
                    //           backgroundColor: Colors.pinkAccent,
                    //           textColor: Colors.white,
                    //           fontSize: 15.0
                    //       ),
                    //     }
                    //   },
                    // }
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
                      "LOGIN",
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

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen())),
                  },
                  child: Text(
                    "Don't Have an Account? Sign up",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "QuickSandBold",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0085C3)
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
