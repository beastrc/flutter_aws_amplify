import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:club_care/extrapage.dart';
import 'package:flutter/material.dart';

import 'donationcenterpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Appcolors.blue,
          elevation: 0,
          title: Text("Home",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Montserrat-Bold')),
          centerTitle: true),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Home",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat-Bold'),
                            ),
                            Expanded(
                                child: SizedBox(
                              width: 10,
                            )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Good Evening",
                                    style: Textstyle1R.text12black.copyWith(
                                        color: Colors.grey, fontSize: 10)),
                                Text(
                                  "Arusham Hussain",
                                  style: Textstyle1R.text12blackbold,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExtraPage(text: "Donate")));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Appcolors.blue,
                                      ),
                                      child: Image.asset(
                                        'assets/icons/donation.png',
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Donate",
                                      style: Textstyle1R.text10black,
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExtraPage(text: "My Donations")));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Appcolors.blue,
                                      ),
                                      child: Image.asset(
                                        'assets/icons/file.png',
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "My Donations",
                                      style: Textstyle1R.text10black,
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExtraPage(text: "Request Help")));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Appcolors.blue,
                                      ),
                                      child: Image.asset(
                                        'assets/icons/headphone.png',
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Request Help",
                                      style: Textstyle1R.text10black,
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExtraPage(text: "Profile")));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Appcolors.blue,
                                      ),
                                      child: Image.asset(
                                        'assets/icons/user.png',
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Profile",
                                      style: Textstyle1R.text10black,
                                    )
                                  ],
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text("Charitable Donations",
                          style: Textstyle1R.text12blackbold),
                      Expanded(
                          child: SizedBox(
                        width: 10,
                      )),
                      Text("See all",
                          style: Textstyle1R.text12blackbold
                              .copyWith(color: Colors.grey)),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DonationCenterPage()));
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    image[i],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      margin: EdgeInsets.zero,
                                      width: width,
                                      height: height * .05,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(.3)),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("CareClub Donation Center",
                                                textAlign: TextAlign.start,
                                                style: Textstyle1R
                                                    .text15whitebold
                                                    .copyWith(fontSize: 12)),
                                          ],
                                        ),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
