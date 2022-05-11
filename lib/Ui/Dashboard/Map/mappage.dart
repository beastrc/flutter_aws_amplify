import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  List image = [
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
    'assets/icons/donations_image.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition:
                CameraPosition(target: LatLng(21.1702, 72.8311), zoom: 15),
          ),
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowGlow();
              return;
            },
            child: ClipRRect(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.06),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Map",
                      style: textStyleBold.copyWith(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      pageSnapping: true,
                      scrollDirection: Axis.horizontal,
                      aspectRatio: 16 / 11,
                      viewportFraction: 0.8,
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      reverse: false,
                      autoPlay: true,
                    ),
                    itemCount: image.length,
                    itemBuilder: (context, itemIndex, realIndex) {
                      return Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 140,
                                  width: width,
                                  child: Image.asset(
                                    "${image[itemIndex]}",
                                    fit: BoxFit.fitWidth,
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(1),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    )),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CareClub Donation Center",
                                      style: textStyleBold.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Bukit Jatil, 57000 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malauysia",
                                      maxLines: 1,
                                      style: textStyle.copyWith(fontSize: 10),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => Create_donation()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Appcolors.blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              )),
                                          child: Text(
                                            "Donate",
                                            textAlign: TextAlign.center,
                                            style: textStyle.copyWith(
                                                color: Appcolors.white,
                                                fontSize: 12),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => Create_donation()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Appcolors.blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              )),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            child: Text(
                                              "More Info",
                                              textAlign: TextAlign.center,
                                              style: textStyle.copyWith(
                                                  color: Appcolors.white,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
