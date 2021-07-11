import 'package:arseli/Matches/matchController.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';

import 'More.dart';
import 'favourites.dart';
import 'leagues.dart';
import 'matches.dart';
import 'news.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  PageController _pageController = PageController();

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  bool isSwitched = false;

  final List<Widget> _childern = [
    matches(),
    news(),
    Leagues(),
    Favourites(),
    More(),
  ];
  final locale = Get.locale.countryCode;

  @override
  Widget build(BuildContext context) {
    print('heeerrree');
    return new Scaffold(
      body: PageView(
        controller: _pageController,
        children: _childern,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: new Icon(MdiIcons.soccerField,
                    color: _selectedIndex == 0
                        ? Color.fromRGBO(95, 31, 117, 1.0)
                        : Colors.grey),
              ),
              title: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: new Text(
                  "المباريات".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: _selectedIndex == 0
                          ? Color.fromRGBO(95, 31, 117, 1.0)
                          : Colors.grey),
                ),
              )),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: new Icon(MdiIcons.newspaperVariant,
                    color: _selectedIndex == 1
                        ? Color.fromRGBO(95, 31, 117, 1.0)
                        : Colors.grey),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: new Text(
                  "أخبار".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: _selectedIndex == 1
                          ? Color.fromRGBO(95, 31, 117, 1.0)
                          : Colors.grey),
                ),
              )),
          BottomNavigationBarItem(
              icon: new Icon(MdiIcons.trophy,
                  color: _selectedIndex == 2
                      ? Color.fromRGBO(95, 31, 117, 1.0)
                      : Colors.grey),
              title: new Text(
                "البطولات".tr,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: _selectedIndex == 2
                        ? Color.fromRGBO(95, 31, 117, 1.0)
                        : Colors.grey),
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,
                color: _selectedIndex == 3
                    ? Color.fromRGBO(95, 31, 117, 1.0)
                    : Colors.grey),
            title: Text(
              "المفضلة".tr,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: _selectedIndex == 3
                      ? Color.fromRGBO(95, 31, 117, 1.0)
                      : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,
                color: _selectedIndex == 4
                    ? Color.fromRGBO(95, 31, 117, 1.0)
                    : Colors.grey),
            title: Text(
              "المزيد".tr,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: _selectedIndex == 4
                      ? Color.fromRGBO(95, 31, 117, 1.0)
                      : Colors.grey),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 110.0,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 28.0),
                    child: CircleAvatar(
                      radius: 13.0,
                      backgroundImage: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 26.0),
                    child: Text(
                      "اسم المستخدم".tr,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.tv), iconSize: 25.0, onPressed: null),
              title: Text(
                "الجدول التلفزيوني".tr,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.loop), iconSize: 25.0, onPressed: null),
              title: Text(
                "الانتقالات".tr,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 450,
            ),
            Divider(
              height: 2,
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.attach_money),
                  iconSize: 25.0,
                  onPressed: null),
              title: Text(
                "ازالة الاعلانات".tr,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.brightness_4),
                  iconSize: 25.0,
                  onPressed: null),
              title: Text(
                "الوضع الليلي".tr,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
              child: ListTile(
                leading: IconButton(
                    icon: Icon(Icons.settings),
                    iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "الاعدادات",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
