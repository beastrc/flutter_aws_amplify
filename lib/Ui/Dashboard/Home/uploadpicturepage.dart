import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:path/path.dart' as path;
import 'package:club_care/Values/appColors.dart';
import 'package:club_care/Values/components.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Upload_pic extends StatefulWidget {
  const Upload_pic({Key key}) : super(key: key);

  @override
  _Upload_picState createState() => _Upload_picState();
}

class _Upload_picState extends State<Upload_pic> {
  var height, width;

  final _picker = ImagePicker();
  String url;
  bool isLoading = false;
  File _image;
  final _cropper = ImageCropper();

  getImage(ImageSource source) async {
    final XFile photo = await _picker.pickImage(source: source);
    File cropped = await _cropper.cropImage(
        sourcePath: photo.path,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        // compressQuality: 100,
        maxWidth: 700,
        maxHeight: 700,
        // compressFormat: ImageCompressFormat.jpg,
        androidUiSettings: AndroidUiSettings(
            // initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true,
            hideBottomControls: true,
            toolbarWidgetColor: Colors.white,
            toolbarColor: Colors.black));
    setState(() {
      _image = File(cropped.path);
    });
  }

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
            SizedBox(width: width * 0.08),
            Text("Picture Upload",
                style: textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.blue),
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.blue),
                  width: width / 4,
                  height: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.blue),
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.blue),
                  width: width / 4,
                  height: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.blue),
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.blue),
                  width: width / 4,
                  height: 12,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Text(
              "Please take picture of your self !",
              style: Textstyle1R.text12blackbold.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                    child: _image == null
                        ? Text(
                            "No Image",
                            style: textStyle,
                          )
                        : Image.file(_image)),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            SizedBox(
              width: width,
              child: ElevatedButton(
                onPressed: () {
                  getImage(ImageSource.camera);
                },
                style: ElevatedButton.styleFrom(
                    primary: Appcolors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Text(
                    "Take Photo",
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(color: Appcolors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              width: width,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Upload_pic ()));
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Appcolors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Text(
                    "Submit",
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
