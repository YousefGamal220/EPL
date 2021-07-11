import 'package:arseli/Matches/MatchesModels/Doc.dart';
import 'package:arseli/Matches/MatchesModels/MatchModel.dart';
import 'package:arseli/Matches/matchController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'LeagueDetailsD.dart';
import 'LeagueN.dart';
import 'clander1.dart';
import 'package:get/get.dart';
import 'APItest.dart';

class matches extends StatefulWidget {
  @override
  _matchesState createState() => _matchesState([
        LeagueN("AustrliaPremierLeague".tr, "assets/12.jpg", true),
        LeagueN("AustrliaPremierLeague".tr, "assets/12.jpg", true),
        LeagueN("CanadaPremierLeague".tr, "assets/12.jpg", true),
        LeagueN("ChinaPremierLeague".tr, "assets/12.jpg", true)
      ]);
}

class _matchesState extends State<matches> with SingleTickerProviderStateMixin {
  bool isTab = true;
  bool vis = true;

  ///===========================
  TextStyle tapbar =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);
  TextStyle headline = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
  TextStyle content = TextStyle(
    fontSize: 14,
  );

  bool isSwitched = false;
  List<LeagueN> _list;

  _matchesState(this._list);

  TabController tabController;

  DateTime dateScheduale;
  var today = '';
  var yesterday = '';
  var oneDayAgo = '';
  var twoDaysAgo = '';
  var tomorrow = '';
  var oneDayThen = '';
  var twoDaysThen = '';
  var threeDayThen = '';
  var fourDayThen = '';
  var fiveDayThen = '';
  List<Widget> tapList;

  _OnExpansion(int index, bool isExpanded) {
    setState(() {
      _list[index].expanded = !(_list[index].expanded);
    });
  }

  var data;
  @override
  void initState() {
    super.initState();
    var match = new EPLAPI("match");
    // match.SetPath("90d2riib18a1224nx6gp8wmj8");
    // match.SetPath("MatchStats");
    match.SetPar("filter", "matchInfo.contestant");
    data = match.GetData();
    tabController = new TabController(length: 11, vsync: this);
    //getTapDays
    setState(() {
      initializeDateFormatting("ar_SA", null).then((_) {
        var now = new DateTime.now();
        DateFormat.MEd('ar_SA').format(now);

        today =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 0)));
        yesterday =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 1)));
        oneDayAgo =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 2)));
        twoDaysAgo =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 3)));
        tomorrow =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 1)));
        oneDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 2)));
        twoDaysThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 3)));
        threeDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 4)));
        fourDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 5)));
        fiveDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 6)));

        List daysList = [
          today,
          yesterday,
          oneDayAgo,
          twoDaysAgo,
          tomorrow,
          oneDayThen,
          twoDaysThen,
          threeDayThen,
          fourDayThen,
          fiveDayThen
        ];
      });
    });

    /*for(var i in daysList){
      tapList.add(Tab(text: i,));
    }*/
    tabController.animateTo(3,
        duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  int changeHour(int hour){
    int hrs = 0;
    if(hour==0&&hour!=12){
      hrs=12;
    }
    else if(hour==12&&hour!=0){
      hrs=12;
    }
    else if(hour<12&&hour!=0){
      hrs=hour;

    }
    else if(hour>12&&hour!=0){
      hrs=hour-12;

    }
    return hrs;
  }
  String date12(int hrs, int mins){
    String date = "";
    if (hrs / 10 < 1)
      date = date + "0" + hrs.toString() + ":";
    else date = date + hrs.toString() + ":";
    if (mins / 10 < 1)
      date = date + "0" + mins.toString();
    else date = date + mins.toString();
    return date;
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  String TeamImage (var ID ){

    return "https://secure.cache.images.core.optasports.com/soccer/teams/75x75/uuid_"+ID+".png";
  }

  String PlayerImage (var ID ){

    return "https://secure.cache.images.core.optasports.com/soccer/players/150x150/uuid_"+ID+".png";
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.calendar_today,
                size: 22,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/clanderbar');
            },
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 260,
                    height: 45,
                    child: Card(
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              obscureText: false,
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration.collapsed(
                                hintText: "بحث".tr,
                                hintStyle: TextStyle(fontSize: 17),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Icon(Icons.notifications_none),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.tune),
                ],
              ),
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(
            isScrollable: true,
            controller: tabController,
            labelColor: Colors.white,
            indicatorColor: Colors.deepPurple,
            labelStyle: tapbar,
            tabs: [
              Tab(
                child: Text(
                  "$twoDaysAgo".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$oneDayAgo".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$yesterday".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "اليوم".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$oneDayThen".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$twoDaysThen".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$threeDayThen".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$fourDayThen".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "$fiveDayThen".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "الثلاثاء 29 سبتمبر".tr,
                  style: tapbar,
                ),
              ),
              Tab(
                child: Text(
                  "التقويم".tr,
                  style: tapbar,
                ),
              ),
            ],
            onTap: (value) {
//              setState(() {
//                print(value);
//                if(tabController.index==3) {
//                  vis=true;
//                }else{
//                  vis=false;
//                }
//                });
            },
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: TabBarView(controller: tabController, children: [
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          _tabBarPage(),
          clander1(),
        ]));
  }

  /*_expansionPanel() {
    List<ExpansionPanel> MyList = [];
    for (int i = 0, ii = _list.length; i < ii; i++) {
      var expansiondata = _list[i];
      MyList.add(ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpaneded) {
            return Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          MdiIcons.soccer,
                          size: 25,
                        ),
                        title: Text(expansiondata.leagueName),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                )
              ],
            );
          },
          body: Container(
            height: 100.0,
            child: Column(children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("انبي"),
                      Icon(MdiIcons.soccer),
                      Text("9:00"),
                      Icon(MdiIcons.soccer),
                      Text("سموحه"),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          isExpanded: expansiondata.expanded));
    }
    return new Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(8.0),
                child: new ExpansionPanelList(
                    children: MyList, expansionCallback: _OnExpansion))));
  }
 */
  _tabBarPage() {
    return GestureDetector(
      onTap: () {
        return FocusScope.of(context).unfocus();
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
//                    buttonIsTeam = true;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, right: 11.0),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.grey[300])),
                  child: Center(
                    child: Text("بالوقت".tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.5)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
//                    buttonIsTeam = true;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, right: 11.0),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.grey[300])),
                  child: Center(
                    child: Text("مباراتي".tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.5)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
//                    buttonIsTeam = false;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, right: 10.0),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.grey[300])),
                  child: Center(
                    child: Text("تلعب الان".tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.5)),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder<Map<String, List<Doc>>>(
              future: liveMatchController.getMatchs(),
              builder: (context, snapshot) => !snapshot.hasData
                  ? Container()
                  : ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (widget, leagueIndex) =>
                          _fullTile(leagueIndex, snapshot),
                      itemCount: liveMatchController.leaguesNames.length),
            ),
          ),
        ],
      ),
    );
  }

  Widget _fullTile(
      int leagueIndex, AsyncSnapshot<Map<String, List<Doc>>> snapshot) {
    return Card(
      elevation: 2,
      child: ExpansionTile(
        onExpansionChanged: (v) {
          setState(() {
            leaguen[leagueIndex].expanded = v;
          });
        },
        subtitle: leaguen[leagueIndex].expanded
            ? Divider(
                color: Colors.black54,
              )
            : null,
        initiallyExpanded: leaguen[leagueIndex].expanded,
        title: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/eachLeague',
                arguments:
                    "${snapshot.data[liveMatchController.leaguesNames.elementAt(leagueIndex)][0].matchInfo.competition.id}");
          },
          child: Row(
            children: [
              Container(
                  width: 35,
                  height: 30,
                  child: Image.asset(leaguen[leagueIndex].img)),
              SizedBox(
                width: 10,
              ),
              Text(
                 "${snapshot.data[liveMatchController.leaguesNames.elementAt(leagueIndex)][0].matchInfo.competition.name}",
                style: headline,
              ),
            ],
          ),
        ),
        children: [
          _tileItem(snapshot
              .data[liveMatchController.leaguesNames.elementAt(leagueIndex)]),
        ],
      ),
    );
  }

  Widget _tileItem(List<Doc> leagueMatchs) {
    print("---> Num Matchs = ${leagueMatchs.length}");
    return Container(
      child: ListView.separated(
        physics: ClampingScrollPhysics(),
        itemCount: leagueMatchs.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          height: 10,
          thickness: 0.2,
        ),
        itemBuilder: (BuildContext context, indexx) {
          return GestureDetector(
            onLongPress: () {
              addDialog();
            },
            onTap: () {
              Navigator.pushNamed(context, '/matchInfo_a');
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 20, left: 10),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.timer,
                          color: Colors.grey[500],
                          size: 20,
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(

                          child: leagueMatchs[indexx] == null ? Container() : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              leagueMatchs[indexx]
                                  .matchInfo
                                  .contestant[0]
                                  .shortName == null ? Container() : Text(
                                leagueMatchs[indexx]
                                    .matchInfo
                                    .contestant[0]
                                    .shortName,
                                style: content,
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                child: Image.network(TeamImage(leagueMatchs[indexx].matchInfo.contestant[0].id))
                              ),
                            ],
                          ),
                        ),
                        leagueMatchs[indexx].matchInfo.time.toString() == "" ?
                        Text(
                          "${leagueMatchs[indexx].matchInfo.time}",
                          style: content,
                        ):
                        Text(
                          "${date12(changeHour(DateFormat("hh:mm:ssZ").parse(leagueMatchs[indexx].matchInfo.time).hour), DateFormat("hh:mm:ssZ").parse(leagueMatchs[indexx].matchInfo.time).minute)}",
                          style: content,
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 30,
                                height: 25,
                                child:Image.network(TeamImage(leagueMatchs[indexx].matchInfo.contestant[0].id))
                              ),
                              Expanded(
                                child: leagueMatchs[indexx]
              .matchInfo
              .contestant[1]
              .shortName == null ? Container() : Text(
                                  leagueMatchs[indexx]
                                      .matchInfo
                                      .contestant[1]
                                      .shortName,
                                  style: content,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      padding: EdgeInsets.symmetric(vertical: 5),
    );
  }

  addDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding:
                EdgeInsets.only(bottom: 290, top: 290, left: 90, right: 90),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("الفرق المفضلة".tr,
                    style: TextStyle(color: Colors.green, fontSize: 13)),
                Text(
                  "اضافة ريال مدريد".tr,
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "اضافة اتليتكو مدريد".tr,
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "تشغيل الاشعارات".tr,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Text("اضافة الي تقويم".tr,
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          );
        });
  }

  searchIcon() {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            insetPadding:
                EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 320),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration.collapsed(
                            hintText:
                                "البحث عن الفرق،المقابلات،اللاعبين،الاخبار".tr,
                            hintStyle: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset("assets/541.jpg"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("ريال مدريد".tr),
                                    ],
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(Icons.star_border),
                                    onPressed: null),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }
}
