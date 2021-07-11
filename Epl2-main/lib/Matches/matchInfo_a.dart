import 'package:arseli/EachLeague/postions.dart';
import 'package:arseli/Matches/preConfron.dart';
import 'package:arseli/Matches/statues_screen/player_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';
import 'package:get/get.dart';
// import 'package:percent_indicator/percent_indicator.dart';
import '../LeagueN.dart';
import 'matchEvent_a.dart';
import 'statues_screen/team_screen.dart';

class matchInfo_a extends StatefulWidget {
  final LeagueN match;

  matchInfo_a({this.match});

  @override
  _matchInfo_aState createState() => _matchInfo_aState();
}

class _matchInfo_aState extends State<matchInfo_a>
    with TickerProviderStateMixin {
  bool buttonIsTeam = true;

  TextStyle _textStyle = TextStyle(color: Colors.grey[500], fontSize: 13);
  TextStyle _textStyle1 = TextStyle(fontSize: 17);
  TextStyle _textStyle2 = TextStyle(color: Colors.grey[500], fontSize: 15);
  TextStyle _textStyle3 =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20);
  TextStyle _textStyle4 =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15);

  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5, color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4 = TextStyle(fontSize: 12, color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);

  static const TextStyle tapbar =
      TextStyle(fontSize: 13, fontWeight: FontWeight.w500);
  TextStyle head = TextStyle(
    fontSize: 16,
  );

  bool chContaier = false;

  ScrollController _scrollController = new ScrollController();

  TabController tabController;
  int _selectedIndex = 0;

  AnimationController animationController;
  Animation<double> _animation;

  @override
  void initState() {
    tabController = new TabController(length: 7, vsync: this);
    tabController.addListener(() {
      setState(() {
        _selectedIndex = tabController.index;
      });
      print(tabController.index.toString());
    });
    tabController.animateTo(2,
        duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);

    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);

    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          elevation: 0.0,
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                    onPressed: null),
              ],
            )
          ],
          expandedHeight: 120.0,
          pinned: true,
          floating: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(bottom: 63, left: 40),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.black,
                          ),
                          onPressed: null),
                      IconButton(
                          icon: Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                          onPressed: null),
                    ],
                  ),
                ],
              ),
            ),
            titlePadding: EdgeInsets.only(top: 10),
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          width: 40,
                          height: 30,
                          child: Image.asset("assets/530.jpg")),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '1 - 3',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          width: 40,
                          height: 30,
                          child: Image.asset("assets/541.jpg")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPersistentHeader(
          delegate: _SliverAppBarDelegate1(
              minHeight: 82.0,
              maxHeight: 87.0,
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 40, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "اتليتكو".tr,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "نهاية المبارة".tr,
                          ),
                          Text(
                            "ريال مدريد".tr,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110, right: 110),
                      child: Container(
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("مارسيلو".tr,
                                    style: TextStyle(fontSize: 12))
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Icon(
                                    MdiIcons.soccer,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("مارسيلو 21\nمارسيلو55".tr,
                                    style: TextStyle(fontSize: 12))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
        DefaultTabController(
          initialIndex: 3,
          length: 7,
          child: SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(TabBar(
                isScrollable: true,
                controller: tabController,
                onTap: (index) {
                  setState(() {
                    if (index == 1) {}
                  });
                },
                indicatorColor: Colors.deepPurple,
                tabs: [
                  Tab(
                    child: Text(
                      "تويتر".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الوسائط".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "احداث المبارة".tr,
                      style: tapbar,
                    ),
                  ),
                  /*   Tab(
                        child:Text("التغطية المباشرة",style:tapbar,),
                      ),

                    */
                  Tab(
                    child: Text(
                      "تشكيلة".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "احصائيات".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "المراكز".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "المواجهات السابقة".tr,
                      style: tapbar,
                    ),
                  ),
                ])),
          ),
        ),
      ];
    }

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: _sliverBuilder,
          body: new TabBarView(controller: tabController, children: [
            Scaffold(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL();
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/webView');
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10))),
                              child: Container(
                                height: 100,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: MediaQuery.of(context)
                                              .size
                                              .width *
                                          0.6,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text("1-0 Phippe Coutiho 21"
                                                    .tr)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "streamable.com",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 100,
                                        width: MediaQuery.of(context)
                                                .size
                                                .width *
                                            0.338,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(
                                                      top: 40),
                                              child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey[700],
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                      100))),
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                    size: 17,
                                                  )),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                        ),
                      ),
                    );
                  }),
            ),
            ListView(children: <Widget>[MatchEvent_a()]),
            /*  Directionality(
              textDirection: TextDirection.ltr,
              child: SafeArea(
                minimum: EdgeInsets.only(bottom: 10),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Row(children: <Widget>[
                          VerticalDivider(thickness:2),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Match ends,Madrid 3,Athlitco 1 ."),
                          ),
                        ],),
                      ),
                    ),
                    ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                        children:_list(context)
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Row(children: <Widget>[
                          VerticalDivider(thickness:2),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("First Half begins"),
                          ),
                        ],),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Row(children: <Widget>[
                          VerticalDivider(thickness:2),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Lineups are annonced and players are warming up"),
                          ),
                        ],),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            */
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      color: Color.fromRGBO(26, 158, 109, 1.0),
                      child: Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.43),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "ريال مدريد".tr,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text("4-2-3-1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        CustomPaint(
                          painter: ShapesPointer(),
                          child: Container(
                            height: 850,
                          ),
                        ),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.4,
                            bottom: 720,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.01,
                            top: 70,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.25,
                            top: 70,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.55,
                            top: 70,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.8,
                            top: 70,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.55,
                            top: 155,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.25,
                            top: 155,
                            child: _players()),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.05,
                          top: 230,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.4,
                          top: 230,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.75,
                          top: 230,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.4,
                          top: 300,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.4,
                          top: 420,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.75,
                          top: 490,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.4,
                          top: 490,
                          child: _players(),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.05,
                          top: 490,
                          child: _players(),
                        ),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.25,
                            top: 560,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.55,
                            top: 560,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.01,
                            top: 640,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.25,
                            top: 640,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.55,
                            top: 640,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.8,
                            top: 640,
                            child: _players()),
                        Positioned(
                            right: MediaQuery.of(context).size.width * 0.4,
                            top: 720,
                            child: _players()),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      color: Color.fromRGBO(26, 158, 109, 1.0),
                      child: Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.43),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "ريال مدريد".tr,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text("4-2-3-1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "مدرب".tr,
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                        child:
                                            Image.asset("assets/Marcelo.jpg"),
                                      ),
                                    ),
                                    Container(
                                        width: 80,
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "مارسيلو".tr,
                                                overflow:
                                                    TextOverflow.visible,
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                    child: Image.asset("assets/Marcelo.jpg"),
                                  ),
                                ),
                                Container(
                                    width: 80,
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "مارسيلو".tr,
                                            overflow: TextOverflow.visible,
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "مقاعد الاحتياط والمدرب".tr,
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 1060,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  ListView.builder(
                                      physics: ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 9,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                width: 45,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                100)),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(100),
                                                  ),
                                                  child: Image.asset(
                                                      "assets/Marcelo.jpg"),
                                                ),
                                              ),
                                              Container(
                                                  width: 80,
                                                  child: Center(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                          "مارسيلو".tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .visible,
                                                        ),
                                                        Text(
                                                          "مدافع".tr,
                                                          style: _textStyle,
                                                        )
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  ListView.builder(
                                      physics: ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 8,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                width: 45,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                100)),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(100),
                                                  ),
                                                  child: Image.asset(
                                                      "assets/Marcelo.jpg"),
                                                ),
                                              ),
                                              Container(
                                                  width: 80,
                                                  child: Center(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                          "مارسيلو".tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .visible,
                                                        ),
                                                        Text(
                                                          "مدافع".tr,
                                                          style: _textStyle,
                                                        )
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "اللاعبون المصابون والمطردون".tr,
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                        child:
                                            Image.asset("assets/Marcelo.jpg"),
                                      ),
                                    ),
                                    Container(
                                        width: 80,
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "مارسيلو".tr,
                                                overflow:
                                                    TextOverflow.visible,
                                              ),
                                              Text(
                                                "إصابة في الرجل اليسرى".tr,
                                                style: _textStyle,
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                    child: Image.asset("assets/Marcelo.jpg"),
                                  ),
                                ),
                                Container(
                                    width: 80,
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "مارسيلو".tr,
                                            overflow: TextOverflow.visible,
                                          ),
                                          Text(
                                            "إصابة في الرجل اليمنى".tr,
                                            style: _textStyle,
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        color: Colors.grey[200],
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 15, bottom: 30),
                          child: Row(
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children:
                                      List.generate(_icons.length, (index) {
                                    return _collectionOfIcons(
                                        _icons[index], _textIcons[index]);
                                  })),
                              SizedBox(
                                width: 80,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 22,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "بطاقة صفراء".tr,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 22,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "بطاقة حمراء".tr,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 20,
                                        height: 25,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              height: 22,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                  color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              4))),
                                            ),
                                            Positioned(
                                              top: 3,
                                              right: 3,
                                              child: Container(
                                                height: 22,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "الاصفر الثاني".tr,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.local_hospital,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "مصاب".tr,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.public,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "الواجب الدولي".tr,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          buttonIsTeam = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0, right: 11.0),
                        width: 180,
                        height: 30,
                        decoration: BoxDecoration(
                            color:
                                buttonIsTeam ? Colors.black12 : Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.grey[300])),
                        child: Center(
                          child: Text("فريق".tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.5)),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          buttonIsTeam = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0, right: 10.0),
                        width: 180,
                        height: 30,
                        decoration: BoxDecoration(
                            color:
                                !buttonIsTeam ? Colors.black12 : Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.grey[300])),
                        child: Center(
                          child: Text("لاعب".tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.5)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    child: buttonIsTeam ? TeamScreen() : PlayersScreen())
              ],
            ),
            ListView(
              children: <Widget>[postions("")],
            ),
            ListView(children: <Widget>[preConfront()]),
          ]),
        ),
      ),
    );
  }

  List<Icon> _icons = [
    Icon(MdiIcons.hand),
    Icon(
      MdiIcons.footPrint,
    ),
    Icon(
      MdiIcons.soccer,
      color: Colors.black,
    ),
    Icon(
      MdiIcons.soccer,
      color: Colors.red,
    ),
    Icon(MdiIcons.soccer),
  ];
  List<String> _textIcons = [
    'ضربات جزاء مبعدة'.tr,
    "صناعة اهداف".tr,
    "هدف".tr,
    "هدف في مرماة".tr,
    "ضربة جزاء ضائعة".tr
  ];

  Widget _collectionOfIcons(_icons, _textIcons) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _icons,
            SizedBox(
              width: 10,
            ),
            Text(
              _textIcons,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ],
    );
  }

  Widget _players() {
    return Container(
      height: 150,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  child: Image.asset("assets/Marcelo.jpg"),
                ),
              ),
              Container(
                width: 80,
                child: Text(
                  "مارسيلو".tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.visible,
                ),
              )
            ],
          ),
          Positioned(
              left: 50,
              bottom: 95,
              child: Container(
                width: 28,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4, top: 2),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "8.6",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget _oneLine() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 40,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 2),
                child: Text("90"),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Second Half ends.Real 3,Athlitco 1.".tr)
          ],
        ),
      ),
    );
  }

  Widget _threeLineC() {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 7, right: 7, top: 2, bottom: 2),
                          child: Text("87"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 150,
                    child: Row(
                      children: <Widget>[
                        VerticalDivider(
                          thickness: 2,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Text(
                              "Attempt missed. pau Victor (GRIONA)right footed shot from outside the box is close,but missed to the right.Assisted by Enric Franquesa"
                                  .tr,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 35,
                                height: 35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.asset("assets/Marcelo.jpg"),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset("assets/541.jpg"),
                              )
                            ],
                          ),
                        ),
                        Text("مارسيلو".tr)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 35,
                                height: 35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.asset("assets/Marcelo.jpg"),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset("assets/541.jpg"),
                              )
                            ],
                          ),
                        ),
                        Text("مارسيلو".tr)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Widget _twoLineC() {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 7, right: 7, top: 2, bottom: 2),
                          child: Text("70"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 150,
                    child: Row(
                      children: <Widget>[
                        VerticalDivider(
                          thickness: 2,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Text(
                              "Attempt missed. pau Victor (GRIONA)right footed shot from outside"
                                  .tr,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 35,
                                height: 35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.asset("assets/Marcelo.jpg"),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset("assets/541.jpg"),
                              )
                            ],
                          ),
                        ),
                        Text("مارسيلو".tr)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  allDetailsL(FNo, SNo, Defination) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 2),
              child: Center(
                  child: Text(
                FNo,
                style: _textStyle1,
              )),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 2),
            child: Text(
              SNo,
              style: content2,
            ),
          ),
          Container(child: Text(Defination, style: _textStyle1))
        ]);
  }

  List<String> _allDeatailsFirstNo = ["1", "5", "10", "4", "7", "0", "9"];

  List<String> _allDeatailsDefination = [
    "اجمالي التسديدات".tr,
    "الفرص".tr,
    "تمريرات دقيقة".tr,
    "تمريرة ناجحه".tr,
    "مخالفات".tr,
    "ضربات ركنية".tr,
    "تسللات".tr
  ];

  List<String> _allDeatailsSecondNo = ["1", "5", "10", "4", "7", "0", "9"];

  List<Widget> _list(BuildContext context) {
    var test = List<Widget>();

    test.add(_oneLine());
    test.add(_threeLineC());
    test.add(_twoLineC());
    test.add(_threeLineC());
    test.add(_oneLine());
    test.add(_twoLineC());
    test.add(_oneLine());
    test.add(_threeLineC());
    test.add(_twoLineC());
    test.add(_threeLineC());
    test.add(_oneLine());
    test.add(_twoLineC());

    return test;
  }
}

_launchURL() async {
  const url = 'https://www.google.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Theme.of(context).primaryColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _SliverAppBarDelegate1 extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate1({
    @required this.minHeight,
    @required this.maxHeight,
    this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate1 oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class ShapesPointer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color.fromRGBO(0, 147, 92, 1.0);
    var rect = Rect.fromLTWH(0, 0, size.width, 850);
    canvas.drawRect(rect, paint);

    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    var rectbig = Rect.fromLTWH(size.width / 4.5, 0, 225, 100);
    canvas.drawRect(rectbig, paint);

    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    var rectsmall = Rect.fromLTWH(size.width / 2.77, 0, 112, 50);
    canvas.drawRect(rectsmall, paint);

    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    var rectbig1 = Rect.fromLTWH(size.width / 4.5, 750, 225, 100);
    canvas.drawRect(rectbig1, paint);

    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    var rectsmall1 = Rect.fromLTWH(size.width / 2.77, 800, 112, 50);
    canvas.drawRect(rectsmall1, paint);

    final rect3 = Rect.fromLTRB(150, 50, 260, 125);
    final startAngle = pi / 9;
    final sweepAngle = pi / 1.3;
    final useCenter = false;
    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    canvas.drawArc(rect3, startAngle, sweepAngle, useCenter, paint);

    final rect4 = Rect.fromLTRB(150, 720, 260, 820);
    final startAngle2 = -pi / 9;
    final sweepAngle2 = -pi / 1.3;
    final useCenter2 = false;
    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    canvas.drawArc(rect4, startAngle2, sweepAngle2, useCenter2, paint);

    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 60.0, paint);

    paint.color = Color.fromRGBO(26, 158, 109, 1.0);
    var line1 = Offset(size.width, size.height / 2);
    var line2 = Offset(0, size.height / 2);
    canvas.drawLine(line1, line2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
