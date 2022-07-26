import 'package:event_app/resource/color_manager.dart';
import 'package:event_app/resource/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class PartyDetailsAfterJoin extends StatelessWidget {
  List<ImageProvider> _images = [
    ExactAssetImage("assets/images/round_3.png"),
    ExactAssetImage("assets/images/round_3.png"),
    ExactAssetImage("assets/images/round_3.png"),
    ExactAssetImage("assets/images/round_3.png"),
    ExactAssetImage("assets/images/round_3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 360),
        child: Stack(
          children: [
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Image.asset(
                    "assets/images/test_1.png",
                    fit: BoxFit.cover,
                  );
                }),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 36),
                  child: Row(children: [
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorManager.shadeBlue2),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorManager.shadeBlue2),
                          child: Image.asset("assets/images/heart.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorManager.shadeBlue2),
                          child: Image.asset("assets/images/Upload.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.editParty);
                          },
                          child: Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorManager.shadeBlue2),
                            child: Image.asset("assets/images/Edit.png"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 10,
              child: Row(
                children: [
                  Image.asset("assets/images/round_1.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Jhone Doe",
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "4.0",
                              style: TextStyle(color: ColorManager.white),
                            ),
                            Image.asset("assets/images/star_1.png"),
                            SizedBox(
                              width: 120,
                            ),
                            Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: ColorManager.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 30,
                              height: 5,
                              decoration: BoxDecoration(
                                color: ColorManager.lightGrey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 30,
                              height: 5,
                              decoration: BoxDecoration(
                                color: ColorManager.lightGrey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem Ipsum is simply dummy text of the..",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when lookingat its layout. The point of using Lorem Ipsum...",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorManager.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when lookingat its layout. The point of using Lorem Ipsum...",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorManager.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "08",
                            style: TextStyle(color: ColorManager.white),
                          ),
                          Text(
                            "Jun",
                            style: TextStyle(color: ColorManager.white),
                          ),
                        ],
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(colors: [
                            ColorManager.darkBlue,
                            ColorManager.darkBlue,
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sat, Jun 08 , 2021",
                            style: TextStyle(color: ColorManager.white),
                          ),
                          Text(
                            "10:00 AM - 9:00 PM",
                            style: TextStyle(color: ColorManager.white),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                height: 76,
                width: 333,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorManager.shadeBlue2),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reveal Party Details  ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.white,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: ColorManager.background,
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 36,
                          ),
                        ),
                      ]),
                ),
                height: 58,
                width: 333,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorManager.shadeBlue2),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: ColorManager.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Central Park",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Manhottan, New York City",
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorManager.lightGrey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Image.asset("assets/images/map.png"),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Participants',
                  style: TextStyle(color: ColorManager.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FlutterImageStack.providers(
                      providers: _images,
                      backgroundColor: ColorManager.black,
                      itemBorderColor: Colors.black,
                      showTotalCount: true,
                      totalCount: 5,

                      extraCountTextStyle: TextStyle(color: Colors.white),
                      itemRadius: 45, // Radius of each images
                      itemCount:
                          3, // Maximum number of images to be shown in stack
                      // Border width around the images
                    ),
                    Spacer(),
                    Container(
                      width: 93,
                      height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorManager.shadeBlue2,
                          gradient: LinearGradient(colors: [
                            ColorManager.purple,
                            ColorManager.shadeBlue2
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/Chat.svg",
                              color: ColorManager.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(color: ColorManager.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
