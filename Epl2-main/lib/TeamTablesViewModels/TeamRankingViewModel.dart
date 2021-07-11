import 'dart:convert';


import 'package:arseli/TeamTables/Division.dart';

import 'package:arseli/TeamTables/Ranking.dart';

import 'package:http/http.dart' as http;



class RankingController
{

  Future<List<Ranking>> getTable(String leagueID) async
  {

    http.Response response = await http.get("https://api.eplworld.com/api/tournaments/$leagueID/table", headers: {"Authorization" : "bearer 5262d64b892e8d4341"});
    Map<String, dynamic> body = json.decode(response.body);

    Division division = Division.fromJson(body['docs'][0]['stage'][0]['division'][0]);
    return  division.ranking;
  }
}

final RankingController rankingController = RankingController();