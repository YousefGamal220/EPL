
import 'dart:convert';

import 'package:arseli/Matches/MatchesModels/Doc.dart';
import 'package:arseli/Matches/MatchesModels/MatchModel.dart';
import 'package:http/http.dart' as http;
class MatchController
{

  MatchModel matchModel = MatchModel();
  Set<String> leaguesNames = {};
  bool isLoading = true;


  Future<Map<String, List<Doc>>> getMatchs() async {
    Map<String, List<Doc>> leauges = {};
    matchModel = await getLiveMatchs();
    matchModel.docs.forEach((doc) {


      try{
        if (leauges.containsKey(doc.matchInfo.competition.id)) {
          leauges[doc.matchInfo.competition.id].add(doc);
          leaguesNames.add(doc.matchInfo.competition.id);
        }
        else{
          List<Doc> docs = List<Doc>();
          leauges[doc.matchInfo.competition.id] = docs;
          leauges[doc.matchInfo.competition.id].add(doc);
        }

      }

      catch (e) {print("Entered excp");}

    });

    return leauges;

  }



  Future<MatchModel> getLiveMatchs() async
  {
    http.Response response = await http.get("https://api.eplworld.com/api/match/", headers: {"Authorization" : "bearer 5262d64b892e8d4341"});
    return MatchModel.fromJson(json.decode(response.body));
  }



}

final liveMatchController = MatchController();