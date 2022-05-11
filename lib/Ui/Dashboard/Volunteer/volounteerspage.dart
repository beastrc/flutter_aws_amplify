import 'package:club_care/Ui/Dashboard/Home/becomevolunnteerpage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Volunteers extends StatefulWidget {
  const Volunteers({Key key}) : super(key: key);

  @override
  _VolunteersState createState() => _VolunteersState();
}

class _VolunteersState extends State<Volunteers> {
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
        title: Text("Volunteers",
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontFamily: 'Montserrat-Bold')),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/volunteers.png",
                height: height / 4,
                width: width * 4,
              ),
            ),
            SizedBox(
              height: height / 14,
            ),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "It seems like you have not applied for an \n volunteership yet.",
                  textAlign: TextAlign.center,
                  style: Textstyle1R.text12blackbold,
                )),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(17),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Appcolors.blue,
                          ),
                          child: Text(
                            "1",
                            style: Textstyle1R.text12whitebold,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Go to',
                          style: Textstyle1R.text10black,
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' Center page',
                                style: Textstyle1R.text12blackbold),
                            TextSpan(
                              text:
                                  ' and select center that \n you want to be volounteer',
                              style: Textstyle1R.text10black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(17),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Appcolors.blue,
                          ),
                          child: Text(
                            "2",
                            style: Textstyle1R.text12whitebold,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      // Text("Go to Center page and select center that \n you want to be volounteer",style: Textstyle1R.text10black,),
                      RichText(
                        text: TextSpan(
                          text: 'After , press',
                          style: Textstyle1R.text10black,
                          children: const <TextSpan>[
                            TextSpan(
                                text: '  Apply for volunteership.',
                                style: Textstyle1R.text12blackbold),
                            // TextSpan(text: ' and select center that \n you want to be volounteer',style: Textstyle1R.text10black,),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(17),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Appcolors.blue,
                          ),
                          child: Text(
                            "3",
                            style: Textstyle1R.text12whitebold,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      // Text("Go to Center page and select center that \n you want to be volounteer",style: Textstyle1R.text10black,),
                      RichText(
                        text: TextSpan(
                          text:
                              'Please submit required document to become \n volunteers,',
                          style: Textstyle1R.text10black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
