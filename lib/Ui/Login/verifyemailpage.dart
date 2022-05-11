import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Appcolors.white,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return;
          },
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill,
              )),
              child: Column(
                children: [
                  SizedBox(height: height * 0.06),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/screen-logo.png", height: 34),
                        Expanded(child: Container()),
                        Icon(
                          FontAwesomeIcons.infoCircle,
                          color: Appcolors.white,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.04),
                            Text(
                              "Verify Email",
                              style: textStyleBold.copyWith(
                                  color: Appcolors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: height * 0.02),
                            Container(
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Appcolors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Color(0xFFAAAAAA),
                                  )),
                              child: TextFormField(
                                controller: emailController,
                                style: textStyle.copyWith(fontSize: 14),
                                cursorColor: Appcolors.black,
                                decoration: fieldStyle.copyWith(
                                  hintText: "Email",
                                  fillColor: Colors.transparent,
                                  contentPadding: EdgeInsets.only(left: 14),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Appcolors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Color(0xFFAAAAAA),
                                  )),
                              child: TextFormField(
                                controller: codeController,
                                style: textStyle.copyWith(fontSize: 14),
                                cursorColor: Appcolors.black,
                                decoration: fieldStyle.copyWith(
                                  hintText: "Confirmation Code",
                                  fillColor: Colors.transparent,
                                  contentPadding: EdgeInsets.only(left: 14),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.4),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Appcolors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                child: Text(
                                  "Confirm",
                                  textAlign: TextAlign.center,
                                  style: textStyle.copyWith(
                                      color: Appcolors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextButton(
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Return to Login Page",
                                  style: textStyle.copyWith(
                                      color: Appcolors.blue, fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
