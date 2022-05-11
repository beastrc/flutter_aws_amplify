import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'Ui/Login/loginpage.dart';
import 'Ui/Login/welcomepage.dart';
import 'Values/appColors.dart';
import 'Values/components.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClubCare',
      home: splash(),
    );
  }
}

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 1500),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Appcolors.white,
          body: Center(
              child: Image.asset(
            "assets/icons/logo.png",
          ))),
    );
  }
}
