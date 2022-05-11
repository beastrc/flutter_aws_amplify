import 'package:club_care/Ui/Dashboard/bottomnav.dart';
import 'package:club_care/Ui/Login/signuppage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'forgotpage.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
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
                      //  Icon(FontAwesomeIcons.infoCircle,color: Appcolors.white,)
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
                            "Welcome to CareClube!",
                            style: textStyle.copyWith(
                                color: Appcolors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: height * 0.03),
                          Text(
                            "Sign in to Continue",
                            style: textStyle.copyWith(
                                color: Appcolors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: height * 0.05),
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
                                  decoration: BoxDecoration(
                                      color: Appcolors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: Color(0xFFAAAAAA),
                                      )),
                                  child: TextFormField(
                                    controller: passwordController,
                                    style: textStyle.copyWith(fontSize: 14),
                                    cursorColor: Appcolors.black,
                                    decoration: fieldStyle.copyWith(
                                      hintText: "Password",
                                      fillColor: Colors.transparent,
                                      contentPadding: EdgeInsets.only(left: 14),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50),
                                ElevatedButton(
                                  onPressed: () {
                                    if (passwordController.text != "" &&
                                        emailController.text != "") {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => NavBar()));
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Appcolors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    child: Text(
                                      "Sign In",
                                      textAlign: TextAlign.center,
                                      style: textStyle.copyWith(
                                          color: Appcolors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPage()));
                                    },
                                    child: Text("Forgot Password?",
                                        style: Textstyle1R.text10black
                                            .copyWith(color: Appcolors.blue)))
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.2),
                          Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpPage()));
                                  },
                                  child: Text("DON'T HAVE AN ACCOUNT?",
                                      style: Textstyle1R.text10black
                                          .copyWith(color: Appcolors.blue))))
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
