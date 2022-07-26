import 'package:event_app/resource/color_manager.dart';
import 'package:event_app/resource/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:fluttertoast/fluttertoast.dart';

class DrawerProfile extends StatefulWidget {
  DrawerProfile({Key? key}) : super(key: key);

  @override
  State<DrawerProfile> createState() => _DrawerProfileState();
}

class _DrawerProfileState extends State<DrawerProfile> {
  bool isSelected = false;
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
            "Now Using Creater Mode",
            style: TextStyle(color: ColorManager.white),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 4),
    );
  }

  _showToastSecond() {
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
            "User Mode",
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
    return Container(
      width: 265,
      decoration: BoxDecoration(
        color: ColorManager.purple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // Image.asset(
          //   color: isSelected ? ColorManager.deepPurple : ColorManager.purple,
          //   'assets/images/drawer_background.png',
          // ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(180, 35, 50, 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/arrow.svg',
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned(
              //     bottom: 5,
              //     child: Image.asset('assets/images/logo_background.png')),
              isSelected ? secondDrawer() : firstDrawer(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Switch(
                    focusColor: ColorManager.white,
                    value: isSelected,
                    onChanged: (bool value) {
                      setState(() {
                        isSelected = value;
                      });

                      isSelected == true ? _showToast() : _showToastSecond();

                      if (isSelected) {
                        Navigator.pushNamed(context, Routes.homeRoute);
                      } else {
                        Navigator.pushNamed(context, Routes.homeUserSetting);
                      }

                      print(value);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  firstDrawer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              horizontal: -4,
              vertical: 1,
            ),
            leading: SizedBox(
              child: SvgPicture.asset('assets/images/Profile.svg',
                  color: ColorManager.white, height: 25, width: 25),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: ColorManager.white,
                fontFamily: 'Inter',
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              horizontal: -4,
              vertical: 1,
            ),
            leading: Container(
              child: SvgPicture.asset('assets/images/Chat.svg',
                  color: ColorManager.white, height: 25, width: 25),
            ),
            title: Text(
              'Faq',
              style: TextStyle(
                color: ColorManager.white,
                fontFamily: 'Inter',
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              horizontal: -4,
              vertical: 1,
            ),
            leading: SizedBox(
              child: SvgPicture.asset('assets/images/Setting.svg',
                  color: ColorManager.white, height: 25, width: 25),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: ColorManager.white,
                fontFamily: 'Inter',
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              horizontal: -4,
              vertical: 1,
            ),
            leading: SizedBox(
              child: SvgPicture.asset('assets/images/bug.svg',
                  height: 25, width: 25),
            ),
            title: Text(
              'Report a bug',
              style: TextStyle(
                color: ColorManager.white,
                fontFamily: 'Inter',
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              horizontal: -4,
              vertical: 1,
            ),
            leading: SizedBox(
              child: SvgPicture.asset(
                'assets/images/Logout.svg',
                height: 25,
                width: 25,
              ),
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                color: ColorManager.white,
                fontFamily: 'Inter',
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  secondDrawer() {
    return Column(
      children: [
        ListTile(
          dense: true,
          visualDensity: VisualDensity(
            horizontal: -4,
            vertical: 1,
          ),
          leading: Icon(
            Icons.person,
            color: ColorManager.white,
          ),
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(
            horizontal: -4,
            vertical: 1,
          ),
          leading: SizedBox(
            child: Image.asset('assets/images/chat.png'),
          ),
          title: Text(
            'Create parties',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(
            horizontal: -4,
            vertical: 1,
          ),
          leading: Icon(
            Icons.settings,
            color: ColorManager.white,
          ),
          title: Text(
            'My Parties',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(
            horizontal: -4,
            vertical: 1,
          ),
          leading: SizedBox(
            child: Image.asset('assets/images/bug.png'),
          ),
          title: Text(
            'party requests',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(
            horizontal: -4,
            vertical: 1,
          ),
          leading: Icon(
            Icons.exit_to_app,
            color: ColorManager.white,
          ),
          title: Text(
            'Logout',
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
