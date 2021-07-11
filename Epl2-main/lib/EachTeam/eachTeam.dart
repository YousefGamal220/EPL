import 'package:arseli/EachTeam/transferTeam.dart';
import 'package:arseli/EachTeam/VideoTeam.dart';
import 'package:arseli/EachTeam/statisticsForTeam.dart';
import 'package:arseli/EachTeam/teamNews.dart';
import 'package:arseli/EachTeam/teamTeam.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'Teampostions.dart';
import 'cups.dart';
import 'matchesForteam.dart';
import 'overView.dart';

class eachTeam extends StatefulWidget {
  @override
  _eachTeamState createState() => _eachTeamState();
}

class _eachTeamState extends State<eachTeam> with TickerProviderStateMixin {
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
    tabController = new TabController(length: 9, vsync: this);
    tabController.addListener(() {
      setState(() {
        _selectedIndex = tabController.index;
      });
      print(tabController.index.toString());
    });

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
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.star, color: Colors.black),
                    onPressed: null),
              ],
            )
          ],
          expandedHeight: 120.0,
          pinned: true,
          floating: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 60,
                            width: 55,
                            child: Image.asset("assets/541.jpg")),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 100,
                      right: 100,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "اسبانيا".tr,
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ))
                ],
              ),
            ),
            centerTitle: true,
            titlePadding: EdgeInsets.only(top: 1.0, bottom: 13.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'ريال مدريد'.tr,
                        style: head,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        DefaultTabController(
          length: 2,
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
                      "عام".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الأخبار".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الفيديو".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "المباريات".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الترتيب".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الفريق".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "إحصائيات".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "إنتقالات".tr,
                      style: tapbar,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الإنجازات".tr,
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
            ListView(children: <Widget>[overView()]),
            ListView(children: <Widget>[teamNews()],),
            ListView(children: <Widget>[VideoTeam()],),
            ListView(children: <Widget>[matchesForTeam()]),
            ListView(children: <Widget>[teamPosition()]),
            ListView(children: <Widget>[teamTeam()]),
            ListView(children: <Widget>[statisticsForTeam()]),
            ListView(children: <Widget>[tranferTeam()]),
            ListView(children: <Widget>[cups()]),
          ]),
        ),
      ),
    );
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
