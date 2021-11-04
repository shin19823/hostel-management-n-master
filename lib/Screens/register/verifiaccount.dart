import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostel_management_system/Screens/login/scanQR.dart';
import 'package:hostel_management_system/components/background.dart';

class VerifyAccount extends StatelessWidget {
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
                "VERIFY\nYOUR ACCOUNT",
                style: TextStyle(
                    fontFamily: "QuickSandBold",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0085C3),
                    fontSize: 40
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Verify Code"
                ),
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "QuickSand"
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
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
                    "VERIFY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "QuickSandBold",
                        fontSize: 30
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