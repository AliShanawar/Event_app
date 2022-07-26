import 'package:event_app/resource/color_manager.dart';
import 'package:event_app/resource/routes_manager.dart';
import 'package:flutter/material.dart';

import 'dart:ui' as ui;

import 'package:flutter_svg/flutter_svg.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  late ScrollController _controller;
  late ScrollController _scrollController;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _controller = ScrollController();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (100 - kToolbarHeight);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: ColorManager.background,
              floating: true,
              pinned: true,
              forceElevated: boxIsScrolled,
              snap: true,
              automaticallyImplyLeading: false,
              expandedHeight: 400,
              bottom: TabBar(
                indicatorColor: ColorManager.purple,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Row(children: [
                      SvgPicture.asset(
                        "assets/images/Profile.svg",
                        color: ColorManager.white,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "About me",
                        style: TextStyle(color: ColorManager.white),
                      )
                    ]),
                  ),
                  Tab(
                    child: Row(children: [
                      SvgPicture.asset(
                        "assets/images/Calendar.svg",
                        color: ColorManager.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Events",
                        style: TextStyle(color: ColorManager.white),
                      )
                    ]),
                  ),
                  Tab(
                    child: Row(children: [
                      SvgPicture.asset(
                        "assets/images/music-svgrepo.svg",
                        color: ColorManager.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Songs",
                        style: TextStyle(color: ColorManager.white),
                      )
                    ]),
                  ),
                ],
                controller: _tabController,
              ),
              flexibleSpace: _isSliverAppBarExpanded
                  ? null
                  : Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 36),
                        child: Column(
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
                                          context, Routes.homeRoute);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    )),
                              ),
                            ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomPaint(
                                  size: Size(80, (80 * 1).toDouble()),
                                  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                  painter: RPSCustomPainter(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        "assets/images/Rectangle 2.png"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "@zara_ahmad",
                                  style: TextStyle(
                                    color: ColorManager.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Popins",
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SvgPicture.asset("assets/images/dj.svg"),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "45",
                                      style: TextStyle(
                                        color: ColorManager.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Popins",
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                        color: ColorManager.lightGrey,
                                        fontFamily: "Popins",
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset("assets/images/Line.svg"),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "10M",
                                      style: TextStyle(
                                        color: ColorManager.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Popins",
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                        color: ColorManager.lightGrey,
                                        fontFamily: "Popins",
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset("assets/images/Line.svg"),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "12k",
                                      style: TextStyle(
                                        color: ColorManager.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Popins",
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                        color: ColorManager.lightGrey,
                                        fontFamily: "Popins",
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 53,
                                    width: 144,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: ColorManager.purple,
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Follow",
                                      style: TextStyle(
                                        color: ColorManager.white,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: ui.FontStyle.normal,
                                        fontFamily: "DM Sans",
                                        fontSize: 16,
                                      ),
                                    )),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  height: 53,
                                  width: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorManager.shadeBlue2,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Notify me",
                                    style: TextStyle(
                                      color: ColorManager.white,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "DM Sans",
                                      fontStyle: ui.FontStyle.normal,
                                      fontSize: 16,
                                    ),
                                  )),
                                )),
                                SizedBox(width: 15),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
            )
          ];
        },
        body: TabBarView(controller: _tabController, children: [
          firstPage(),
          secondPage(),
          thirdPage(),
        ]),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(28, 0, 12, 4),
        child: Container(
          width: 304,
          height: 66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: ColorManager.shadeBlue2,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset("assets/images/Rectangle 88.png"),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Badai Guys",
                      style: TextStyle(
                        color: ColorManager.white,
                        fontWeight: ui.FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Belling Allus",
                      style: TextStyle(color: ColorManager.white, fontSize: 11),
                    )
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorManager.circlecolor2,
                  child: Icon(
                    Icons.pause,
                    color: ColorManager.purple,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget thirdPage() {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Playlist',
                      style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "DM Sans",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: ColorManager.purple,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 175,
                width: 400,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                    height: 150,
                                    width: 144,
                                    child: Image.asset(
                                        "assets/images/dummy_4.png")),
                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: ColorManager.shadeBlue2,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    height: 54,
                                    width: 135,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'Music Pagi',
                                                style: TextStyle(
                                                  color: ColorManager.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  fontFamily: "DM Sans",
                                                  fontStyle: FontStyle.normal,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.music_note,
                                                    size: 12,
                                                    color: ColorManager.white,
                                                  ),
                                                  Text(
                                                    '12 Tracks',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontFamily: "DM Sans",
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: ColorManager.white,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: ColorManager.white,
                                            child:
                                                Icon(Icons.play_arrow_rounded),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent played',
                    style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: ColorManager.purple,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  controller: _controller,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/images/Rectangle 88.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balonku Ads 5 Meter",
                                  style: TextStyle(
                                    color: ColorManager.white,
                                    fontWeight: ui.FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Mamank . Popuar Song",
                                  style: TextStyle(color: ColorManager.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ));
  }

  Widget firstPage() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Me",
              style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 26,
                  fontWeight: ui.FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took...",
                style: TextStyle(
                  color: ColorManager.lightGrey,
                ),
                maxLines: 4,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Interests",
              style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/guiter.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Guitar',
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    color: ColorManager.shadeBlue2,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/camera.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Photography',
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: ColorManager.shadeBlue2,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/guiter.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Guitar',
                      style: TextStyle(
                          color: ColorManager.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              height: 50,
              width: 110,
              decoration: BoxDecoration(
                color: ColorManager.shadeBlue2,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Reviews",
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: ui.FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/round_1.png"),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alex bhati",
                      style: TextStyle(color: ColorManager.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "12 june 2022",
                      style: TextStyle(color: ColorManager.white),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "It is a long established fact that a reader will be distra cted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum...",
                style: TextStyle(color: ColorManager.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/round_1.png"),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alex bhati",
                      style: TextStyle(color: ColorManager.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "12 june 2022",
                      style: TextStyle(color: ColorManager.white),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/star_1.png",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "It is a long established fact that a reader will be distra cted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum...",
                style: TextStyle(color: ColorManager.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget secondPage() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Events",
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                controller: _controller,
                scrollDirection: Axis.vertical,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 91,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorManager.shadeBlue2,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image.asset("assets/images/round_3.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Music",
                                style: TextStyle(
                                  color: ColorManager.mucis,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "DM Sans",
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Party Neoen",
                                style: TextStyle(
                                  color: ColorManager.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "DM Sans",
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: ColorManager.lightGrey,
                                    size: 12,
                                  ),
                                  Text(
                                    "San Fransisc",
                                    style: TextStyle(
                                      color: ColorManager.lightGrey,
                                      fontSize: 11,
                                      fontFamily: 'DM Sans',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorManager.datecolor,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              height: 51,
                              width: 48,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        '09',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'DM Sans',
                                            color: ColorManager.white),
                                      ),
                                      Text(
                                        'jun',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'DM Sans',
                                            color: ColorManager.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02222222;
    paint_0_stroke.shader = ui.Gradient.linear(
        Offset(size.width * 0.01584967, size.height * 0.5000000),
        Offset(size.width, size.height * 0.5000000), [
      Color(0xffFF7473).withOpacity(1),
      Color(0xffFFF8FA).withOpacity(1),
      Color(0xffECA2FF).withOpacity(1),
      Color(0xffE080FF).withOpacity(1),
      Color(0xffD9D9D9).withOpacity(0)
    ], [
      0,
      0.296875,
      0.682292,
      0.9999,
      1
    ]);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.01111111, size.height * 0.01111111,
                size.width * 0.9777778, size.height * 0.9777778),
            bottomRight: Radius.circular(size.width * 0.2666667),
            bottomLeft: Radius.circular(size.width * 0.2666667),
            topLeft: Radius.circular(size.width * 0.2666667),
            topRight: Radius.circular(size.width * 0.2666667)),
        paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.01111111, size.height * 0.01111111,
                size.width * 0.9777778, size.height * 0.9777778),
            bottomRight: Radius.circular(size.width * 0.2666667),
            bottomLeft: Radius.circular(size.width * 0.2666667),
            topLeft: Radius.circular(size.width * 0.2666667),
            topRight: Radius.circular(size.width * 0.2666667)),
        paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
