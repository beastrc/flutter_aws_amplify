import 'package:club_care/Ui/Dashboard/bottomnav.dart';
import 'package:club_care/Ui/Login/signuppage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'loginpage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Appcolors.white,
        /*bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Appcolors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  child: Text(
                    "Join the cause",
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(
                      color: Appcolors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Not a Member?",
                    style: textStyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.1)
            ]
        ),*/
        body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          )),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: height * 0.06),
                Row(
                  children: [
                    Image.asset("assets/icons/screen-logo.png", height: 34),
                    Expanded(child: Container()),
                    Icon(
                      FontAwesomeIcons.infoCircle,
                      color: Appcolors.white,
                    )
                  ],
                ),
                SizedBox(height: height * 0.1),
                Text(
                  "Join us in helping the Community",
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                      color: Appcolors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login_page()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Appcolors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      "Join the cause",
                      textAlign: TextAlign.center,
                      style: textStyle.copyWith(color: Appcolors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Not a Member?",
                      style: textStyle.copyWith(fontSize: 12),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          "Register here",
                          style: textStyle.copyWith(
                              color: Appcolors.blue, fontSize: 12),
                        ))
                  ],
                ),
                SizedBox(height: height * 0.1)
              ],
            ),
          ),
        ));
  }
}
