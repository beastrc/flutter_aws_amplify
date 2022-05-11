import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';

import 'uploadpicturepage.dart';

class Upload_doc extends StatefulWidget {
  const Upload_doc({Key key}) : super(key: key);

  @override
  _Upload_docState createState() => _Upload_docState();
}

class _Upload_docState extends State<Upload_doc> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
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
            SizedBox(width: width * 0.08),
            Text("Upload Document",
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
              ],
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Text(
              "Please upload your passport",
              style: Textstyle1R.text12blackbold.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Please press the upload button and submit button after uploading",
              style: Textstyle1R.text10black.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
                child: Image.asset(
              "assets/icons/upload.png",
              height: height / 5,
            )),
            SizedBox(
              height: height * 0.10,
            ),
            SizedBox(
              width: width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Upload_pic()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Appcolors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Text(
                    "Continue",
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
