import 'package:event_app/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartyRequest extends StatelessWidget {
  const PartyRequest({Key? key}) : super(key: key);

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
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: ColorManager.white,
                        )),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      Text(
                        "Party Requests",
                        style: TextStyle(
                          color: ColorManager.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "DM sans",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Container(
                    height: 81,
                    width: 305,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorManager.shadeBlue2,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/images/round_1.png',
                            height: 54,
                            width: 54,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Party Name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Row(
                              children: [
                                Text('4.5',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.white)),
                                SizedBox(
                                  width: 8,
                                ),
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/Star.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: ColorManager.circlecolor,
                          child: SvgPicture.asset(
                            "assets/images/cross_1.svg",
                            height: 10,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            gradient: LinearGradient(
                              colors: [
                                ColorManager.gradient,
                                ColorManager.purple
                              ],
                            ),
                          ),
                          child: Icon(
                            Icons.done,
                            color: ColorManager.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                );
              })),
        ],
      ),
    );
  }
}
