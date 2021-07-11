import 'package:arseli/TournamentClassModels/TournamentController.dart';
import 'package:arseli/TournamentClassModels/TournamentStatModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class teamsStats extends StatefulWidget {
  String _leagueID;
  teamsStats(this._leagueID);
  @override
  _teamsStatsState createState() => _teamsStatsState(_leagueID);
}

class _teamsStatsState extends State<teamsStats> {
  String _leagueID;
  _teamsStatsState(this._leagueID);
  TextStyle head = TextStyle(fontSize: 13.5);
  TextStyle content = TextStyle(fontSize: 15);
  TextStyle content2 = TextStyle(fontSize: 13.5, color: Colors.grey);
  TextStyle number = TextStyle(
    fontSize: 20,
  );
  int numGoals = 2;
  int numInGoals = 2;
  int numYellowCards = 2;
  int numRedCards = 2;
  String TeamImage (var ID ){

    return "https://secure.cache.images.core.optasports.com/soccer/teams/75x75/uuid_"+ID+".png";
  }

  String PlayerImage (var ID ){

    return "https://secure.cache.images.core.optasports.com/soccer/players/150x150/uuid_"+ID+".png";
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FutureBuilder<TournamentStatModel>(
        future: tournamentController.getTournamentStatModel(_leagueID),
        builder: (context, snapshot) => !snapshot.hasData ? Container() : ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
          children: [
            Container(
              height: 298,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[100],
                      height: 130,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/eachTeam');
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 5, right: 15),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text(
                                        "عدد الأهداف".tr,
                                        style: head,
                                      )
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("${snapshot.data.docs[0].teamTopPerformers.ranking[0].team[0].name}",
                                        style: content),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "${snapshot.data.docs[0].teamTopPerformers.ranking[0].team[0].value}",
                                          style: number,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(TeamImage(snapshot.data.docs[0].teamTopPerformers.ranking[0].team[0].id)))
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numGoals,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 13),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/eachTeam');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${snapshot.data.docs[0].teamTopPerformers.ranking[0].team[index].name}")
                              ]),
                              Text(
                                "${snapshot.data.docs[0].teamTopPerformers.ranking[0].team[index].value}",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      height: 2,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 8, bottom: 8, right: 15),
                      child: GestureDetector(
                          onTap: () {
                            numGoals = snapshot.data.docs[0].teamTopPerformers.ranking[0].team.length;
                            setState(() {

                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                "عرض الكل".tr,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 298,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[100],
                      height: 130,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/eachTeam');
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 5, right: 15),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text(
                                        "عدد الاهداف المستقبلة".tr,
                                        style: head,
                                      )
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("${snapshot.data.docs[0].teamTopPerformers.ranking[1].team[0].name}",
                                        style: content),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "${snapshot.data.docs[0].teamTopPerformers.ranking[1].team[0].value}",
                                          style: number,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset("assets/541.jpg"))
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numInGoals,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 13),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/eachTeam');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${snapshot.data.docs[0].teamTopPerformers.ranking[1].team[index].name}")
                              ]),
                              Text(
                                "${snapshot.data.docs[0].teamTopPerformers.ranking[1].team[index].value}",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      height: 2,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 8, bottom: 8, right: 15),
                      child: GestureDetector(
                          onTap: () {
                            numInGoals = snapshot.data.docs[0].teamTopPerformers.ranking[1].team.length;
                            setState(() {

                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                "عرض الكل".tr,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 298,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[100],
                      height: 130,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/eachTeam');
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 5, right: 15),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text(
                                        "عدد البطاقات الصفراء".tr,
                                        style: head,
                                      )
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("${snapshot.data.docs[0].teamTopPerformers.ranking[2].team[0].name}",
                                        style: content),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "${snapshot.data.docs[0].teamTopPerformers.ranking[2].team[0].value}",
                                          style: number,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset("assets/541.jpg"))
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numYellowCards,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 13),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/eachTeam');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${snapshot.data.docs[0].teamTopPerformers.ranking[2].team[index].name}")
                              ]),
                              Text(
                                "${snapshot.data.docs[0].teamTopPerformers.ranking[2].team[index].value}",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      height: 2,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 8, bottom: 8, right: 15),
                      child: GestureDetector(
                          onTap: () {
                            numYellowCards = snapshot.data.docs[0].teamTopPerformers.ranking[2].team.length;
                            setState(() {

                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                "عرض الكل".tr,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 298,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[100],
                      height: 130,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/eachTeam');
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 5, right: 15),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text(
                                        "عدد البطاقات الحمراء".tr,
                                        style: head,
                                      )
                                    ]),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("${snapshot.data.docs[0].teamTopPerformers.ranking[3].team[0].name}",
                                        style: content),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "${snapshot.data.docs[0].teamTopPerformers.ranking[3].team[0].value}",
                                          style: number,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset("assets/541.jpg"))
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numRedCards,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 13),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/eachTeam');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${snapshot.data.docs[0].teamTopPerformers.ranking[3].team[index].name}")
                              ]),
                              Text(
                                "${snapshot.data.docs[0].teamTopPerformers.ranking[3].team[index].value}",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      height: 2,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 8, bottom: 8, right: 15),
                      child: GestureDetector(
                          onTap: () {
                            numRedCards = snapshot.data.docs[0].teamTopPerformers.ranking[3].team.length;
                            setState(() {

                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                "عرض الكل".tr,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
