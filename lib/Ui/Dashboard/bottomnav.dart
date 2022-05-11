import 'package:club_care/Ui/Dashboard/Centers/centerspage.dart';
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Home/homepage.dart';
import 'Map/mappage.dart';
import 'Settings/settingspage.dart';
import 'Volunteer/volounteerspage.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selected_index = 0;

  setIndex(int index) {
    setState(() {
      selected_index = index;
    });
  }

  List<Widget> _options = [
    HomePage(),
    CentersPage(),
    MapPage(),
    Volunteers(),
    Setting_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _options.elementAt(selected_index),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border(top: BorderSide(color: Appcolors.button_grey))
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                activeIcon: Image.asset('assets/icons/home.png',
                    width: 20, color: Appcolors.blue),
                icon: SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('assets/icons/home.png')),
                label: "Home",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                activeIcon: Image.asset('assets/icons/building.png',
                    width: 20, color: Appcolors.blue),
                icon: SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('assets/icons/building.png')),
                label: "Centers",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                activeIcon: Image.asset('assets/icons/map.png',
                    width: 20, color: Appcolors.blue),
                icon: SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('assets/icons/map.png')),
                label: "Map",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                activeIcon: Image.asset('assets/icons/bicycle.png',
                    width: 20, color: Appcolors.blue),
                icon: SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('assets/icons/bicycle.png')),
                label: "Volunteer",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                activeIcon: Image.asset('assets/icons/settingg_icon.png',
                    width: 20, color: Appcolors.blue),
                icon: SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('assets/icons/settingg_icon.png')),
                label: "Setting",
                backgroundColor: Colors.transparent),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: selected_index,
          elevation: 0,
          unselectedFontSize: 8,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Appcolors.blue,
          iconSize: 30,
          onTap: setIndex,
          //elevation: 5,
          backgroundColor: Colors.white,
          selectedFontSize: 8,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
