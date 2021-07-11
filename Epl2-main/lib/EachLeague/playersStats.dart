import 'package:arseli/TournamentClassModels/TournamentController.dart';
import 'package:arseli/TournamentClassModels/TournamentStatModel.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class playersStats extends StatefulWidget {
  String _leagueID;
  playersStats(this._leagueID);
  @override
  _playersStatsState createState() => _playersStatsState(_leagueID);
}

class _playersStatsState extends State<playersStats> {
  String _leagueID;
  _playersStatsState(this._leagueID);
  TextStyle head = TextStyle(fontSize: 13.5);
  TextStyle content = TextStyle(fontSize: 15);
  TextStyle content2 = TextStyle(fontSize: 13.5, color: Colors.grey);
  TextStyle number = TextStyle(
    fontSize: 20,
  );

  int numScores = 2;
  int numAssests = 2;
  int numMatchs = 2;
  int numYellow = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FutureBuilder<TournamentStatModel>(
        future: tournamentController.getTournamentStatModel(_leagueID),
        builder: (context, snapshot) => !snapshot.hasData
            ? Container()
            : ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                children: [
                  Container(
                    height: 295,
                    child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: !snapshot.hasData
                            ? Container()
                            : Column(
                                children: <Widget>[
                                  Container(
                                    color: Colors.grey[100],
                                    height: 130,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/players');
                                      },
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, right: 15),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(children: <Widget>[
                                                    Text(
                                                      "اهداف".tr,
                                                      style: head,
                                                    )
                                                  ]),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "${snapshot.data.docs[0].playerTopPerformers.ranking[1].player[0].matchName}"
                                                        .tr,
                                                    style: content,
                                                  ),
                                                  Text(
                                                    "${snapshot.data.docs[0].playerTopPerformers.ranking[1].player[0].contestantName}"
                                                        .tr,
                                                    style: content2,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "${snapshot.data.docs[0].playerTopPerformers.ranking[1].player[0].value}",
                                                        style: number,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Container(
                                                      height: 60,
                                                      width: 60,
                                                      child: Image.asset(
                                                          "assets/Marcelo.jpg"))
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),

                                  /// Listview of Goals
                                  Expanded(
                                    child: ListView.builder(
                                        itemCount: numScores,
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 20,
                                            bottom: 8),
                                        itemBuilder: (context, index) =>
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, '/players');

                                                /// Must have arguemnt the player ID
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Row(children: <Widget>[
                                                    Container(
                                                        height: 30,
                                                        width: 30,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            100)),
                                                            child: Image.asset(
                                                              "assets/Marcelo.jpg",
                                                            ))),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                        "${snapshot.data.docs[0].playerTopPerformers.ranking[1].player[index].matchName}")
                                                  ]),
                                                  Text(
                                                    "${snapshot.data.docs[0].playerTopPerformers.ranking[1].player[index].value}",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),

                                  Divider(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 8, right: 15),
                                    child: GestureDetector(
                                        onTap: () {
                                          numScores = snapshot
                                              .data
                                              .docs[0]
                                              .playerTopPerformers
                                              .ranking[1]
                                              .player
                                              .length;
                                          setState(() {});
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "عرض الكل".tr,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            )
                                          ],
                                        )),
                                  )
                                ],
                              )),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    height: 295,
                    child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.grey[100],
                              height: 130,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/players');
                                },
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Text(
                                                "صناعة أهداف".tr,
                                                style: head,
                                              )
                                            ]),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[6].player[0].matchName}"
                                                  .tr,
                                              style: content,
                                            ),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[6].player[0].contestantName}"
                                                  .tr,
                                              style: content2,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "${snapshot.data.docs[0].playerTopPerformers.ranking[6].player[0].value}",
                                                  style: number,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/Marcelo.jpg"))
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ),

                            /// Listview of Assests
                            Expanded(
                              child: ListView.builder(
                                  itemCount: numAssests,
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20, bottom: 8),
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/players');

                                          /// Must have arguemnt the player ID
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100)),
                                                      child: Image.asset(
                                                        "assets/Marcelo.jpg",
                                                      ))),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  "${snapshot.data.docs[0].playerTopPerformers.ranking[6].player[index].matchName}")
                                            ]),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[6].player[index].value}",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      )),
                            ),

                            Divider(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, right: 15),
                              child: GestureDetector(
                                  onTap: () {
                                    numAssests = snapshot
                                        .data
                                        .docs[0]
                                        .playerTopPerformers
                                        .ranking[6]
                                        .player
                                        .length;
                                    setState(() {});
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
                        )),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),

                  /// مشاركات
                  Container(
                    height: 295,
                    child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.grey[100],
                              height: 130,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/players');
                                },
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Text(
                                                "مشاركات".tr,
                                                style: head,
                                              )
                                            ]),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[0].player[0].matchName}"
                                                  .tr,
                                              style: content,
                                            ),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[0].player[0].contestantName}"
                                                  .tr,
                                              style: content2,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "${snapshot.data.docs[0].playerTopPerformers.ranking[0].player[0].value}",
                                                  style: number,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/Marcelo.jpg"))
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ),

                            /// Listview of Assests
                            Expanded(
                              child: ListView.builder(
                                  itemCount: numMatchs,
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20, bottom: 8),
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/players');

                                          /// Must have arguemnt the player ID
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100)),
                                                      child: Image.asset(
                                                        "assets/Marcelo.jpg",
                                                      ))),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  "${snapshot.data.docs[0].playerTopPerformers.ranking[0].player[index].matchName}")
                                            ]),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[0].player[index].value}",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      )),
                            ),

                            Divider(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, right: 15),
                              child: GestureDetector(
                                  onTap: () {
                                    numMatchs = snapshot
                                        .data
                                        .docs[0]
                                        .playerTopPerformers
                                        .ranking[0]
                                        .player
                                        .length;
                                    setState(() {});
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
                        )),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    height: 295,
                    child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.grey[100],
                              height: 130,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/players');
                                },
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Text(
                                                "البطاقات الصفراء".tr,
                                                style: head,
                                              )
                                            ]),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[2].player[0].matchName}"
                                                  .tr,
                                              style: content,
                                            ),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[2].player[0].contestantName}"
                                                  .tr,
                                              style: content2,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "${snapshot.data.docs[0].playerTopPerformers.ranking[2].player[0].value}",
                                                  style: number,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/Marcelo.jpg"))
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ),

                            /// Listview of Yellow Cards
                            Expanded(
                              child: ListView.builder(
                                  itemCount: numYellow,
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20, bottom: 8),
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/players');

                                          /// Must have arguemnt the player ID
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100)),
                                                      child: Image.asset(
                                                        "assets/Marcelo.jpg",
                                                      ))),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  "${snapshot.data.docs[0].playerTopPerformers.ranking[2].player[index].matchName}")
                                            ]),
                                            Text(
                                              "${snapshot.data.docs[0].playerTopPerformers.ranking[2].player[index].value}",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      )),
                            ),

                            Divider(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, right: 15),
                              child: GestureDetector(
                                  onTap: () {
                                    numYellow = snapshot
                                        .data
                                        .docs[0]
                                        .playerTopPerformers
                                        .ranking[2]
                                        .player
                                        .length;
                                    setState(() {});
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
                        )),
                  ),
                ],
              ),
      ),
    );
  }
}
