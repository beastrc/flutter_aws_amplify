import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

import 'uploaddocumentpage.dart';

class Select_document extends StatefulWidget {
  const Select_document({Key key}) : super(key: key);

  @override
  _Select_documentState createState() => _Select_documentState();
}

class _Select_documentState extends State<Select_document> {
  bool isPassportBool = true;
  bool isCardBool = false;
  bool isLicenceBool = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Appcolors.blue,
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/icons/back.png", width: 16, height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Home",
                style: textStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.white,
                    fontFamily: 'Montserrat-Bold'),
              ),
            ),
            SizedBox(width: width * 0.12),
            Text("Select Document",
                style: textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.blue),
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.blue),
                  width: width / 4,
                  height: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                  width: width / 4,
                  height: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                  width: width / 4,
                  height: 12,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Text(
              "Please select your type of document:",
              style: Textstyle1R.text12blackbold.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (isCardBool == true || isLicenceBool == true) {
                    isPassportBool = true;
                    isCardBool = false;
                    isLicenceBool = false;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: isPassportBool == true
                        ? Appcolors.blue
                        : Appcolors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      new BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/passport-card.png",
                        color: isPassportBool == true
                            ? Appcolors.white
                            : Appcolors.blue,
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 10),
                      Text("Passport",
                          style: textStyle.copyWith(
                              fontSize: 12,
                              color: isPassportBool == true
                                  ? Appcolors.white
                                  : Appcolors.black)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (isPassportBool == true || isLicenceBool == true) {
                    isPassportBool = false;
                    isCardBool = true;
                    isLicenceBool = false;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color:
                        isCardBool == true ? Appcolors.blue : Appcolors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      new BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/id-cards.png",
                        color: isCardBool == true
                            ? Appcolors.white
                            : Appcolors.blue,
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 10),
                      Text("Id Card",
                          style: textStyle.copyWith(
                              color: isCardBool == true
                                  ? Appcolors.white
                                  : Appcolors.black,
                              fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (isPassportBool == true || isCardBool == true) {
                    isPassportBool = false;
                    isCardBool = false;
                    isLicenceBool = true;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: isLicenceBool == true
                        ? Appcolors.blue
                        : Appcolors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      new BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/driving-license.png",
                        color: isLicenceBool == true
                            ? Appcolors.white
                            : Appcolors.blue,
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 10),
                      Text("Driving Licence",
                          style: textStyle.copyWith(
                              color: isLicenceBool == true
                                  ? Appcolors.white
                                  : Appcolors.black,
                              fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            SizedBox(
              width: width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Upload_doc()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Appcolors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Text(
                    "Process to verify",
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(color: Appcolors.white),
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
