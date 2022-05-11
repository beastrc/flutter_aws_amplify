import 'package:club_care/Ui/Login/verifyemailpage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import 'dart:io'; // for using HttpClient
import 'dart:convert';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
// beast_add_start
  List _loadedPhotos = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    const API_URL =
        'database-1.chtjh5xji5nw.eu-west-2.rds.amazonaws.com/sign-in';

    final response = await http.get(Uri.parse(API_URL));
    final data = json.decode(response.body);

    setState(() {
      _loadedPhotos = data;
    });
  }

// beast_add_end

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.04),
                            Text(
                              "Sign Up",
                              style: textStyle.copyWith(
                                  color: Appcolors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: height * 0.03),
                            Text(
                              "Please fill up the following information. You can also join us using your Google and Facebook account.",
                              style: textStyle.copyWith(
                                  color: Appcolors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: height * 0.02),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Appcolors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.2),
                                      offset: Offset(0, 2),
                                      blurRadius: 10,
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Appcolors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Color(0xFFAAAAAA),
                                        )),
                                    child: TextFormField(
                                      controller: numberController,
                                      style: textStyle.copyWith(fontSize: 14),
                                      cursorColor: Appcolors.black,
                                      decoration: fieldStyle.copyWith(
                                        hintText: "Phone Number",
                                        fillColor: Colors.transparent,
                                        contentPadding:
                                            EdgeInsets.only(left: 14),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
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
                                        contentPadding:
                                            EdgeInsets.only(left: 14),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Appcolors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Color(0xFFAAAAAA),
                                        )),
                                    child: TextFormField(
                                      controller: passwordController,
                                      style: textStyle.copyWith(fontSize: 14),
                                      obscureText: true,
                                      cursorColor: Appcolors.black,
                                      decoration: fieldStyle.copyWith(
                                        hintText: "Password",
                                        fillColor: Colors.transparent,
                                        contentPadding:
                                            EdgeInsets.only(left: 14),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  RichText(
                                    text: TextSpan(
                                      text:
                                          "By Pressing the submit button below you agree to the ",
                                      style: textStyle.copyWith(fontSize: 12),
                                      children: [
                                        TextSpan(
                                          text: 'terms and conditions',
                                          style: textStyle.copyWith(
                                              fontSize: 12,
                                              color: Appcolors.blue),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (numberController.text != "" &&
                                          emailController.text == "" &&
                                          passwordController.text == "") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VerifyEmailPage()));
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Appcolors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        )),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child: Text(
                                        "Sign Up",
                                        textAlign: TextAlign.center,
                                        style: textStyle.copyWith(
                                            color: Appcolors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
