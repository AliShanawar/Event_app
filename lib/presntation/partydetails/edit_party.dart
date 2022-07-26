import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:event_app/presntation/userTextform/text_form_field.dart';
import 'package:event_app/resource/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../resource/color_manager.dart';

class EditParty extends StatefulWidget {
  EditParty({Key? key}) : super(key: key);

  @override
  State<EditParty> createState() => _EditPartyState();
}

class _EditPartyState extends State<EditParty> {
  File? pickedImage;
  void imagePickerOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: ColorManager.background,
        builder: (context) {
          return SingleChildScrollView(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Container(
                color: ColorManager.background,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Pic Image From",
                        style: TextStyle(
                          fontSize: 20,
                          color: ColorManager.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
                        child: GestureDetector(
                          onTap: () {
                            pickImage(ImageSource.camera, context);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Camera',
                                style: TextStyle(
                                    color: ColorManager.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ColorManager.gradient,
                                  ColorManager.purple
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
                        child: GestureDetector(
                          onTap: () {
                            pickImage(ImageSource.gallery, context);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Gallery',
                                style: TextStyle(
                                    color: ColorManager.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ColorManager.gradient,
                                  ColorManager.purple
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: ColorManager.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ColorManager.gradient,
                                  ColorManager.purple
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  addParticpent(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: ColorManager.shadeBlue2,
        builder: (context) {
          return SingleChildScrollView(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Container(
                color: ColorManager.shadeBlue2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: ColorManager.lightGrey,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                        child: Text(
                          "Add Participent",
                          style: TextStyle(
                            fontSize: 20,
                            color: ColorManager.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: TextformFields(
                            hintText: "Choose Club", isColor: true),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: TextformFields(
                          hintText: "Choose Dj",
                          isColor: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: TextformFields(
                          hintText: "Choose Alchol",
                          isColor: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            child: Center(
                              child: Text(
                                'Update',
                                style: TextStyle(
                                    color: ColorManager.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ColorManager.gradient,
                                  ColorManager.purple
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  pickImage(ImageSource imageType, BuildContext context) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Navigator.pop(context);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorManager.shadeBlue2),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, Routes.partyDetailsAfterJoin);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(
                        "Edit Party",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'DM Sans',
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextformFields(
                hintText: 'Enter title', icon: Icons.create_outlined),
            SizedBox(
              height: 10,
            ),
            TextformFields(hintText: 'Choose Date', icon: Icons.calendar_month),
            SizedBox(
              height: 10,
            ),
            TextformFields(hintText: 'Choose Time', icon: Icons.access_time),
            SizedBox(
              height: 10,
            ),
            TextformFields(
                hintText: 'Search Location', icon: Icons.add_location_outlined),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Card(
                color: ColorManager.background,
                child: TextField(
                  maxLines: 3, //or null
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: ColorManager.borderBackground),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: ColorManager.borderBackground),
                    ),
                    hintText: 'Description',
                    hintStyle: TextStyle(color: ColorManager.lightGrey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
              child: DottedBorder(
                color: ColorManager.borderBackground,
                child: InkWell(
                  onTap: () {
                    imagePickerOption(context);
                  },
                  child: Container(
                      height: 90,
                      width: double.infinity,
                      child: Center(
                          child: SvgPicture.asset(
                              'assets/images/upload_Image.svg'))),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: pickedImage == null
                        ? Text("empty")
                        : Image.file(pickedImage!, fit: BoxFit.cover),
                    height: 80,
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
                  child: GestureDetector(
                    onTap: () {
                      addParticpent(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Add participent',
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: ColorManager.shadeBlue2,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.homeRoute);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Update info',
                      style: TextStyle(
                          color: ColorManager.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [ColorManager.gradient, ColorManager.purple],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
