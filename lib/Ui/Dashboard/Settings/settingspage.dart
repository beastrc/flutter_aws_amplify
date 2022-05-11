import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';

import '../../../extrapage.dart';

class Setting_page extends StatefulWidget {
  @override
  _Setting_pageState createState() => _Setting_pageState();
}

class _Setting_pageState extends State<Setting_page> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 20, right: 20, bottom: height * .04, top: height * .07),
            color: Appcolors.blue,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(21),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Text(
                        "AH",
                        style: TextStyle(color: Appcolors.blue, fontSize: 28),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Arsham Hussain",
                            style: Textstyle1R.text15whitebold),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Image.asset(
                                'assets/icons/diamond.png',
                                color: Appcolors.blue,
                                width: 15,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "300 Points",
                              style: Textstyle1R.text10black
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowGlow();
              return;
            },
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Account Settings",
                    style: Textstyle1R.text15blackbold,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Change Password")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/lock.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Change Password",
                            style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Change Phone Number")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/phone-call.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Change Phone Number",
                            style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Redeem Points")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/box.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Redeem Points", style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .06,
                  ),
                  Text(
                    "My Donations",
                    style: Textstyle1R.text15blackbold,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Pending Donations")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/pending.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Pending Donations",
                            style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Accepted Donations")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/tick.png',
                          width: 15,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          " Accepted Donations",
                          style: Textstyle1R.text12regular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Reject Donations")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/close (1).png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Reject Donations",
                          style: Textstyle1R.text12regular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Completed Donations")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/present-box.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Completed Donations",
                            style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .06,
                  ),
                  Text(
                    "General",
                    style: Textstyle1R.text15blackbold,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Terms of services")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/documents.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Terms of Services",
                          style: Textstyle1R.text12regular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Privay Policy")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/lock.png',
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Privacy Policy",
                          style: Textstyle1R.text12regular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Support")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/headphone.png',
                          width: 23,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Support", style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "Invite Friends")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/total_visitor_icon.png",
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Invite Friends",
                          style: Textstyle1R.text12regular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExtraPage(text: "About us")));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/user_manag_icon.png",
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("About us", style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/drawer_log_out_icon.png",
                          width: 20,
                          color: Appcolors.blue,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("Log Out", style: Textstyle1R.text12regular),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ))
        ],
      ),
    );
  }
}
