import 'dart:convert';

import 'package:arseli/TeamTables/Ranking.dart';
import 'package:arseli/TeamTables/TeamTables.dart';
import 'package:arseli/TeamTablesViewModels/TeamRankingViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Client.dart';

class postions extends StatefulWidget {
  String _leagueID;
  postions(this._leagueID);
  @override
  _postionsState createState() => _postionsState(_leagueID);
}

TextStyle tapbar = TextStyle(
  fontSize: 13,
);
TextStyle headline = TextStyle(fontSize: 11, fontWeight: FontWeight.w600);
TextStyle headline2 = TextStyle(fontSize: 13.5, color: Colors.grey);
TextStyle content = TextStyle(
  fontSize: 13.5,
);

class _postionsState extends State<postions> {
  String TeamImage (var ID ){

    return "https://secure.cache.images.core.optasports.com/soccer/teams/75x75/uuid_"+ID+".png";
  }

  String PlayerImage (var ID ){

    return "https://secure.cache.images.core.optasports.com/soccer/players/150x150/uuid_"+ID+".png";
  }
  String _leagueID;
  _postionsState(this._leagueID);
  Future<List<Ranking>> getTable() async {
    print("Started");
    //http.Response response = await Client.getRequest("https://api.eplworld.com/api/teams/3kq9cckrnlogidldtdie2fkbl/table");
    http.Response response = await http.get(
        "https://api.eplworld.com/api/teams/3kq9cckrnlogidldtdie2fkbl/table",
        headers: {"Authorization": "bearer 5262d64b892e8d4341"});
    print(response);
    Map<String, dynamic> body = json.decode(response.body);
    TeamTables teamTables = TeamTables.fromJson(body);
    return teamTables.docs[0].stage[0].division[0].ranking;
  }

  Future<Map<String, String>> getTeamsImages() async {
    Map<String, String> imgs = {};
    List<String> teamIDS = await getTournamentTeams(_leagueID);
    //print(teamIDS);
    teamIDS.forEach((element) async {
      //print(element);
      http.Response response = await http.get(
          "https://api.eplworld.com/api/teams/$element",
          headers: {"Authorization": "bearer 5262d64b892e8d4341"});
      //print(json.decode(response.body)['docs']);
      List<dynamic> docs = json.decode(response.body)['docs'];
      docs.forEach((item) {
        imgs[element.toString()] = item['img']['m'].toString();
        print(item['img']['sm']);
        //var res = json.decode(item);
        //print(res);
        //imgs[element] =  res['img']['sm'];
      });

      //print(imgs[element]);
    });
    print(imgs);
    return imgs;
  }

  Future<List<String>> getTournamentTeams(String tourID) async {
    List<String> tours = [];
    http.Response response = await http.get(
        "https://api.eplworld.com/api/tournaments/$tourID/teams",
        headers: {"Authorization": "bearer 5262d64b892e8d4341"});
    //print(response.body);
    List<dynamic> docs = json.decode(response.body)['docs'];
    //print(docs.length);
    //print(docs[19]['id']);
    for (int i = 0; i < docs.length; i++) {
      try {
        tours.add(docs[i]['id']);
      } catch (e) {}
    }

    //print(tours);
    return tours;
  }

  @override
  Widget build(BuildContext context) {
    print("League ID  = $_leagueID");
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 11.0),
                    width: 40,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("كل".tr, style: headline),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("الذهاب".tr, style: headline),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Center(
                      child: Text(
                        "الاياب".tr,
                        style: headline,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 133.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("تشكيل".tr, style: headline),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "#",
                        style: TextStyle(color: Colors.grey),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "فريق".tr,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      flex: 3,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "م".tr,
                          style: headline2,
                        ),
                      ),
                      flex: 1,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "ف".tr,
                          style: headline2,
                        ),
                      ),
                      flex: 1,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "ت".tr,
                          style: headline2,
                        ),
                      ),
                      flex: 1,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "خ".tr,
                          style: headline2,
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "-/+",
                          style: headline2,
                        ),
                      ),
                      flex: 2,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "=",
                          style: headline2,
                        ),
                      ),
                      flex: 1,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          "ن".tr,
                          style: headline2,
                        ),
                      ),
                      flex: 1,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
        FutureBuilder<List<Ranking>>(
          future: rankingController.getTable(_leagueID),
          builder: (context, snapshot) => !snapshot.hasData
              ? CircularProgressIndicator()
              : ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, index) {
                    return Column(children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/eachTeam');
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[

                              Expanded(child: Center(child: Text("${snapshot.data[index].rank}")), flex: 1,),
                              Expanded(
                                child: Row(
                                  
                                  children: [
                                    Container(
                                        width: 40,
                                        height: 28,
                                        child:
                                        Image.network(TeamImage(snapshot.data[index].contestantId))),
                                    Text(
                                      "${snapshot.data[index].contestantShortName}"
                                          .tr,
                                      style: content,
                                    ),
                                  ],
                                ),
                                flex: 4,
                              ),

                              Expanded(

                                child: Text(
                                  "${snapshot.data[index].matchesPlayed}",
                                  style: content,
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Text(
                                  "${snapshot.data[index].matchesWon}",
                                  style: content,
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Text(
                                  "${snapshot.data[index].matchesDrawn}",
                                  style: content,
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Text(
                                  "${snapshot.data[index].matchesLost}",
                                  style: content,
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "${snapshot.data[index].goalsAgainst}-${snapshot.data[index].goalsFor}",
                                    style: content,
                                  ),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Text(
                                  "${snapshot.data[index].goaldifference}",
                                  style: content,
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Text(
                                  "${snapshot.data[index].points}",
                                  style: content,
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        color: Colors.grey,
                      )
                    ]);
                  }),
        )
      ],
    );
  }
}
