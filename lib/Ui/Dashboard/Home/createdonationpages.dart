import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';

class Create_donation extends StatefulWidget {
  const Create_donation({Key key}) : super(key: key);

  @override
  _Create_donationState createState() => _Create_donationState();
}

class _Create_donationState extends State<Create_donation> {
  int _value;
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
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("assets/icons/back.png",
                    width: 16, height: 16)),
            InkWell(
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
            Text("Create a Donation",
                style: textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CareClub Donation Center",
                style: textStyle.copyWith(fontSize: 10, color: Appcolors.blue),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Create a Donation",
                style: Textstyle1R.text15blackbold
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Please fill the required feilds",
                style: Textstyle1R.text10black,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/icons/plus.png",
                      color: Colors.grey,
                      height: 30,
                      width: 40,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Tap to add images",
                      style:
                          Textstyle1R.text10black.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Item Informantion",
                style: Textstyle1R.text15blackbold.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Category ",
                    style: Textstyle1R.text10black,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Appcolors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.9, color: Appcolors.white)),
                    //height: 40,
                    width: 330,
                    child: DropdownButton(
                      elevation: 5,
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(10),
                      isDense: true,
                      underline: SizedBox(),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Flat",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "RobotoCondensed-Bold"),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Row house",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "RobotoCondensed-Bold"),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Bunglow",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "RobotoCondensed-Bold"),
                          ),
                          value: 3,
                        )
                      ],
                      onChanged: (int value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Select item",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "RobotoCondensed-Bold"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Name ",
                style: Textstyle1R.text10black,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                style: textStyle.copyWith(fontSize: 18),
                cursorColor: Appcolors.black,
                decoration: fieldStyle.copyWith(
                    fillColor: Appcolors.white,
                    errorStyle: TextStyle(height: 0, fontSize: 0),
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Name of the item",
                    hintStyle: Textstyle1R.text10black),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Decsption",
                style: Textstyle1R.text10black,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                style: textStyle.copyWith(fontSize: 14),
                cursorColor: Appcolors.black,
                decoration: fieldStyle.copyWith(
                    fillColor: Appcolors.white,
                    errorStyle: TextStyle(height: 0, fontSize: 0),
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Brife description about item",
                    hintStyle: Textstyle1R.text10black),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Pickup and Drop-off Method",
                style: Textstyle1R.text12blackbold,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "You can either drop off the item by yourself or request one of\n the volunteer to pick up of you",
                style: Textstyle1R.text10black,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Select_document()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Appcolors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      "I will drop off it my self",
                      textAlign: TextAlign.center,
                      style: Textstyle1R.text10black
                          .copyWith(color: Appcolors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Select_document()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Appcolors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      "I would like to request volunteer",
                      textAlign: TextAlign.center,
                      style: Textstyle1R.text10black
                          .copyWith(color: Appcolors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Select_document()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Appcolors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Text(
                        "Donate",
                        textAlign: TextAlign.center,
                        style: textStyle.copyWith(color: Appcolors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
