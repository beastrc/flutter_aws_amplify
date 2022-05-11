import 'package:club_care/Ui/Dashboard/Home/selectdocumentpage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';

class Apply_volunteer extends StatefulWidget {
  const Apply_volunteer({Key key}) : super(key: key);

  @override
  _Apply_volunteerState createState() => _Apply_volunteerState();
}

class _Apply_volunteerState extends State<Apply_volunteer> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
            SizedBox(width: width * 0.1),
            Text("Become a Volunteer",
                style: textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/documents.png",
                height: height / 5,
                width: width * 5,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              "We need to verify your document",
              style: Textstyle1R.text15blackbold.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              "In order to ensure that our application is safe from both the donors and centers, we need to verify youe self for use.",
              style: Textstyle1R.text10black.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.15,
            ),
            SizedBox(
              width: width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Select_document()));
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
