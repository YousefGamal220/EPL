import 'Team.dart';

class RankingX {
    String name;
    List<Team> team;

    RankingX({this.name, this.team});

    factory RankingX.fromJson(Map<String, dynamic> json) {
        return RankingX(
            name: json['name'], 
            team: json['team'] != null ? (json['team'] as List).map((i) => Team.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        if (this.team != null) {
            data['team'] = this.team.map((v) => v.toJson()).toList();
        }
        return data;
    }
}