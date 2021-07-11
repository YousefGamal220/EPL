import 'dart:convert';


import 'package:arseli/TeamTablesViewModels/Player.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SquadController extends GetxController
{
  RxList<Player> goalKeeper = List<Player>().obs;
  RxList<Player> defence = List<Player>().obs;
  RxList<Player> midfielders = List<Player>().obs;
  RxList<Player> attack = List<Player>().obs;
  RxList<Player> coachs = List<Player>().obs;
  RxList<Player> playersObs = List<Player>().obs;
  RxBool isLoading = true.obs;
@override
  onInit()
{
  super.onInit();
  getPlayers();
}
  Future<List<Player>> getPlayers()async{
    List<Player> players = List<Player>();
    try
    {
      isLoading(true);
      http.Response response = await http.get("https://api.eplworld.com/api/teams/3kq9cckrnlogidldtdie2fkbl/squad", headers: {"Authorization" : "bearer 5262d64b892e8d4341"});
      List<dynamic> body = json.decode(response.body)['docs'];
      print(body);
      List<Map<String, dynamic>> docs = List<Map<String, dynamic>>();
      body.forEach((element) {
        print(element['firstName']);
        docs.add(element);
      });



      docs.forEach((player) {

        players.add(Player.fromJson(player));
        if (player['type'] == "coach")
        {
          coachs.add(Player.fromJson(player));
        }
        else
        {
          if (player['position'] == "Attacker")
            attack.add(Player.fromJson(player));
          else if(player['position'] == "Midfielder")
            midfielders.add(Player.fromJson(player));
          else if(player['position'] == "Goalkeeper")
            goalKeeper.add(Player.fromJson(player));
          else if (player['position'] == "Defender")
            defence.add(Player.fromJson(player));
        }

      });
    }
    finally{
      isLoading(false);
      print("Done");
    }
    return players;

  }
}

final squadController = Get.put(SquadController());