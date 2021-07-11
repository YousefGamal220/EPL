import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:arseli/TournamentClassModels/TournamentStatModel.dart';

class TournamentController
{
  //Future<TournamentStatModel> getTournamentStatModel(String league)async => TournamentStatModel.fromJson(json.decode((await http.get("https://api.eplworld.com/api/tournaments/$league/stats")).body));
  Future<TournamentStatModel> getTournamentStatModel(String league)async {
    http.Response response = await http.get("https://api.eplworld.com/api/tournaments/$league/stats", headers: {"Authorization" : "bearer 5262d64b892e8d4341"});

    TournamentStatModel tournamentStatModel = TournamentStatModel.fromJson(json.decode(response.body));
    print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");

    return tournamentStatModel;
  }
}
final TournamentController tournamentController = TournamentController();