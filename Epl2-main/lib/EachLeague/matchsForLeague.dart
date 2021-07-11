import 'dart:convert';

import 'package:arseli/LeagueTableModels/Doc.dart';
import 'package:arseli/LeagueTableModels/LeagueTableModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class matchesForLeague extends StatefulWidget {
  String _leagueID;
  matchesForLeague(this._leagueID);
  @override
  _matchesForLeagueState createState() => _matchesForLeagueState(_leagueID);
}

class _matchesForLeagueState extends State<matchesForLeague> {
  TextStyle content = TextStyle(
    fontSize: 13.5,
  );
  String _leagueID;
  _matchesForLeagueState(this._leagueID);

  Future<List<Doc>> getDocs(String leagueID) async {
    http.Response response = await http.get(
        "https://api.eplworld.com/api/tournaments/$leagueID/matches/",
        headers: {"Authorization": "bearer 5262d64b892e8d4341"});

    Map<String, dynamic> body = json.decode(response.body);

    try {
      LeagueTableModel leagueTableModel =
          LeagueTableModel.fromJson(json.decode(response.body));
    } catch (e) {
      print(e);
    }

    return LeagueTableModel.fromJson(json.decode(response.body)).docs;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, List<Doc>>>(
      future: leagueMatchController.getMatchs(_leagueID),
      builder: (context, snapshot) => !snapshot.hasData
          ? Container()
          : ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: leagueMatchController.matchDates.length,
              itemBuilder: (BuildContext context, dateIndex) {
                return Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "${leagueMatchController.matchDates.elementAt(dateIndex)}"
                                      .tr,
                                  style: content,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  physics: ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: snapshot
                                      .data[leagueMatchController.matchDates
                                          .elementAt(dateIndex)]
                                      .length,
                                  itemBuilder: (BuildContext context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/matchInfo_a');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 30,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 60, right: 60),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "${snapshot.data[leagueMatchController.matchDates.elementAt(dateIndex)][index].matchInfo.contestant[0].shortName}"
                                                            .tr,
                                                        style: content,
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        width: 30,
                                                        child: Image.asset(
                                                            "assets/530.jpg"),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              snapshot
                                                          .data[
                                                              leagueMatchController
                                                                  .matchDates
                                                                  .elementAt(
                                                                      dateIndex)]
                                                              [index]
                                                          .liveData
                                                          .matchDetails
                                                          .scores ==
                                                      null
                                                  ? Container()
                                                  : Text(
                                                      "${snapshot.data[leagueMatchController.matchDates.elementAt(dateIndex)][index].liveData.matchDetails.scores.total.home} - ${snapshot.data[leagueMatchController.matchDates.elementAt(dateIndex)][index].liveData.matchDetails.scores.total.away}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 30,
                                                        width: 35,
                                                        child: Image.asset(
                                                            "assets/541.jpg"),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "${snapshot.data[leagueMatchController.matchDates.elementAt(dateIndex)][index].matchInfo.contestant[1].shortName}"
                                                              .tr,
                                                          style: content,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
    );
  }
}

class LeagueMatchController {
  Set<String> matchDates = {};

  Future<Map<String, List<Doc>>> getMatchs(String leagueID) async {
    Map<String, List<Doc>> leauges = {};
    var matchModel = await getDocs(leagueID);

    matchModel.forEach((doc) {
      try {
        if (leauges.containsKey(doc.matchInfo.date)) {
          leauges[doc.matchInfo.date].add(doc);
          matchDates.add(doc.matchInfo.date);
        } else {
          List<Doc> docs = List<Doc>();
          leauges[doc.matchInfo.date] = docs;
          leauges[doc.matchInfo.date].add(doc);
        }
      } catch (e) {
        print("Entered excp");
      }
    });

    return leauges;
  }

  Future<List<Doc>> getDocs(String leagueID) async {
    http.Response response = await http.get(
        "https://api.eplworld.com/api/tournaments/$leagueID/matches/",
        headers: {"Authorization": "bearer 5262d64b892e8d4341"});

    Map<String, dynamic> body = json.decode(response.body);

    try {
      LeagueTableModel leagueTableModel =
          LeagueTableModel.fromJson(json.decode(response.body));
    } catch (e) {
      print(e);
    }

    return LeagueTableModel.fromJson(json.decode(response.body)).docs;
  }
}

final LeagueMatchController leagueMatchController = LeagueMatchController();
