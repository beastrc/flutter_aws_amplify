import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:http/http.dart' as http;

import 'dart:io'; // for using HttpClient
import 'dart:convert';

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Appcolors.white,
        body: SingleChildScrollView(
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
                            "Forgot Password",
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
                          SizedBox(height: height * 0.5),
                          ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
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
                                "Recover",
                                textAlign: TextAlign.center,
                                style:
                                    textStyle.copyWith(color: Appcolors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                                if (emailController.text == "") {
                                  Navigator.pop(context);
                                }
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
        ));
  }
}
