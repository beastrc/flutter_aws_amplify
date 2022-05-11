import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';

class CentersPage extends StatefulWidget {
  @override
  _CentersPageState createState() => _CentersPageState();
}

class _CentersPageState extends State<CentersPage> {
  List image = [
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
  ];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Appcolors.blue,
          elevation: 0,
          title: Text("Centers",
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Centers",
                style: textStyleBold.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                "Please select center to donate",
                style: textStyleBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Appcolors.blue),
              ),
              SizedBox(height: 10),
              Container(
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
                child: TextFormField(
                  controller: searchController,
                  style: textStyle.copyWith(fontSize: 14),
                  cursorColor: Appcolors.black,
                  decoration: fieldStyle.copyWith(
                    fillColor: Colors.transparent,
                    contentPadding: EdgeInsets.only(left: 14),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(14),
                      child: Image.asset("assets/icons/search.png",
                          width: 20, height: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: image.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(image[i]),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("CareClub Donation Center",
                                          textAlign: TextAlign.start,
                                          style: Textstyle1R.text15whitebold
                                              .copyWith(fontSize: 12)),
                                    ],
                                  ),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
