import 'Player.dart';

class Ranking {
    String name;
    List<Player> player;

    Ranking({this.name, this.player});

    factory Ranking.fromJson(Map<String, dynamic> json) {
        return Ranking(
            name: json['name'], 
            player: json['player'] != null ? (json['player'] as List).map((i) => Player.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        if (this.player != null) {
            data['player'] = this.player.map((v) => v.toJson()).toList();
        }
        return data;
    }
}