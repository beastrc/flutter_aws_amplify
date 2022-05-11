import 'package:club_care/Ui/Dashboard/Home/selectdocumentpage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';

import 'becomevolunnteerpage.dart';
import 'createdonationpages.dart';

class DonationCenterPage extends StatefulWidget {
  @override
  _DonationCenterPageState createState() => _DonationCenterPageState();
}

class _DonationCenterPageState extends State<DonationCenterPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
            Text("CareClub Donation Center",
                style: textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/icons/donations_image.jpg"),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CareClub Donation Center",
                  style: textStyleBold.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "Bukit Jatil, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malauysia",
                  style: textStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "23",
                          style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Appcolors.blue),
                        ),
                        Text(
                          "Donations",
                          style: textStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "2",
                          style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Appcolors.blue),
                        ),
                        Text(
                          "Donors",
                          style: textStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "1",
                          style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Appcolors.blue),
                        ),
                        Text(
                          "Volunteers",
                          style: textStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Appcolors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/tick.png",
                              color: Appcolors.white, width: 10, height: 10),
                          SizedBox(width: 5),
                          Text(
                            "verified",
                            style: textStyle.copyWith(
                                fontSize: 12, color: Appcolors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "There are so many ways now that people contribute throught the Internet, We vet all of our contributions and when something dosen't meet our requirements or a donation exceeds the amount that's allowed by the law, we return it.",
                  style: textStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 20),
                Text(
                  "Acceptable Donations: Furniture, Cloths",
                  style: textStyleBold.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Create_donation()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Appcolors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      "Donate",
                      textAlign: TextAlign.center,
                      style: textStyle.copyWith(color: Appcolors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Do you want to become a Volunteer?",
                  style: textStyleBold.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Apply_volunteer()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Appcolors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Text(
                        "Apply for volunteership",
                        textAlign: TextAlign.center,
                        style: textStyle.copyWith(color: Appcolors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
