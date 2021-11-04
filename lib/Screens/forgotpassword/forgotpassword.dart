import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostel_management_system/Screens/forgotpassword/contract.dart';
import 'package:hostel_management_system/components/background.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "RESET\nPASSWORD",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "QuickSandBold",
                    color: Color(0xFF0085C3),
                    fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Phone Number"
                ),
                maxLength: 10,
                style: TextStyle(
                  fontFamily: "QuickSand",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              ),
            ),

            SizedBox(height: size.height * 0.01),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Container(
                    width: 165,
                    child : TextField(
                      decoration: InputDecoration(
                          labelText: "Verify code"
                      ),
                      style: TextStyle (
                        fontFamily: "QuickSand"
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                  Container(
                    width: 165,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 40.0,
                        width: size.width * 0.5,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 133, 195),
                                  Color.fromARGB(200, 200, 125, 255)
                                ]
                            )
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "GET CODE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "QuickSandBold",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ]
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()))
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
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "CHANGE PASSWORD",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "QuickSandBold",
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}