import 'package:event_app/presntation/homecreator/home_setting.dart';
import 'package:event_app/presntation/homeuser/home_user_screen.dart';
import 'package:event_app/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeUserSetting extends StatefulWidget {
  HomeUserSetting({Key? key}) : super(key: key);

  @override
  State<HomeUserSetting> createState() => _HomeUserSettingState();
}

class _HomeUserSettingState extends State<HomeUserSetting> {
  int seletedPage = 0;
  List page = [
    HomeUserScreen(),
    HomePage(),
    HomeUserScreen(),
    HomeUserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[seletedPage],
      bottomNavigationBar: buildNavBar(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  buildNavBar(BuildContext context) {
    return BottomAppBar(
      color: ColorManager.shadeBlue2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  seletedPage = 0;
                });
              },
              child: Container(
                child: SvgPicture.asset(
                  height: 30,
                  width: 25,
                  "assets/images/Home.svg",
                  color: seletedPage == 0
                      ? ColorManager.white
                      : ColorManager.white,
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  seletedPage = 1;
                });
              },
              child: Container(
                child: SvgPicture.asset(
                  height: 30,
                  width: 25,
                  "assets/images/Calendar.svg",
                  color: seletedPage == 1
                      ? ColorManager.white
                      : ColorManager.white,
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  seletedPage = 2;
                });
              },
              child: Container(
                child: SvgPicture.asset(
                  height: 25,
                  width: 30,
                  "assets/images/Heart.svg",
                  color: seletedPage == 2
                      ? ColorManager.white
                      : ColorManager.white,
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  seletedPage = 3;
                });
              },
              child: Container(
                child: SvgPicture.asset(
                  height: 30,
                  width: 25,
                  "assets/images/Profile.svg",
                  color: seletedPage == 3
                      ? ColorManager.white
                      : ColorManager.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.7500000, size.height * 0.08333333);
//     path_0.lineTo(size.width, size.height * 0.5208333);
//     path_0.lineTo(size.width * 0.7500000, size.height * 0.9583333);
//     path_0.lineTo(size.width * 0.2500000, size.height * 0.9583333);
//     path_0.lineTo(0, size.height * 0.5208333);
//     path_0.lineTo(size.width * 0.2500000, size.height * 0.08333333);
//     path_0.close();

//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Colors.purple;
//     canvas.drawPath(path_0, paint_0_fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
