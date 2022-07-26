import 'package:event_app/resource/color_manager.dart';
import 'package:event_app/resource/routes_manager.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class PartyDetails extends StatefulWidget {
  const PartyDetails({Key? key}) : super(key: key);

  @override
  State<PartyDetails> createState() => _PartyDetailsState();
}

class _PartyDetailsState extends State<PartyDetails> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: ColorManager.shadeBlue2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
              backgroundColor: ColorManager.purple,
              child: Icon(
                Icons.check,
                color: ColorManager.white,
              )),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "Your request has been forwarded",
            style: TextStyle(color: ColorManager.white),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }

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
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.about);
                          },
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
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
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
                          borderRadius: BorderRadius.circular(11),
                          gradient: LinearGradient(
                            colors: [
                              ColorManager.gradient,
                              ColorManager.purple
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 10,
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
                width: 304,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorManager.shadeBlue2),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.partyDetailsAfterJoin);
                    setState(() {
                      _showToast();
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Join Party',
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
            ],
          ),
        ),
      ),
    );
  }
}
