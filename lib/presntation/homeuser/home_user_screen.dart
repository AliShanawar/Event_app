import 'package:event_app/presntation/drawer/drawer.dart';
import 'package:event_app/resource/color_manager.dart';
import 'package:event_app/resource/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeUserScreen extends StatefulWidget {
  HomeUserScreen({Key? key}) : super(key: key);

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  final GlobalKey<ScaffoldState> drawerKey = new GlobalKey<ScaffoldState>();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: DrawerProfile(),
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 230),
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 36),
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
                    child: InkWell(
                      onTap: () {
                        drawerKey.currentState!.openDrawer();
                      },
                      child: Image.asset(
                        "assets/images/homeburg.png",
                        height: 11,
                        width: 19,
                      ),
                    ),
                    // onPressed: () {
                    //   drawerKey.currentState!.openDrawer();
                    // },
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/Search.svg"),
                      SizedBox(
                        width: 25,
                      ),
                      SvgPicture.asset("assets/images/Notification.svg"),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Good Evening',
                  style: TextStyle(
                    color: ColorManager.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'DM Sans',
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'John Deo',
                  style: TextStyle(
                    color: ColorManager.lightGrey,
                    fontSize: 17,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorManager.purple
                                      : ColorManager.shadeBlue2,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/music.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Music',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorManager.purple
                                      : ColorManager.shadeBlue2,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/coffe.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Music',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Creators',
                    style: TextStyle(fontSize: 22, color: ColorManager.white),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: ColorManager.purple),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 185,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorManager.shadeBlue2,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 14, 12, 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  height: 48,
                                  width: 48,
                                  image:
                                      AssetImage('assets/images/round_1.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Jhone Doe',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      color: ColorManager.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: ColorManager.white)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Star.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.about);
                                    },
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Follow',
                                          style: TextStyle(
                                              color: ColorManager.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      height: 35,
                                      width: 90,
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
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Events',
                    style: TextStyle(
                      fontSize: 18,
                      color: ColorManager.white,
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: ColorManager.purple),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.partyDetails);
                },
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: ColorManager.shadeBlue2,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/dummy_2.png'),
                                      height: 130,
                                      width: 176,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Music",
                                      style: TextStyle(
                                        color: ColorManager.lightGrey,
                                        fontSize: 12,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Party neon',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 45,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: ColorManager.datecolor,
                                            borderRadius:
                                                BorderRadius.circular(11),
                                          ),
                                          height: 45,
                                          width: 45,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    '08',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'DM Sans',
                                                      color: ColorManager.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'jun',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'DM Sans',
                                                        color:
                                                            ColorManager.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/location.svg"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'San Francisco',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
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
