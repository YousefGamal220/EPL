import 'package:arseli/TeamTables/Ranking.dart';

class Division {
    List<Ranking> ranking;
    String type;

    Division({this.ranking, this.type});

    factory Division.fromJson(Map<String, dynamic> json) {
        return Division(
            ranking: json['ranking'] != null ? (json['ranking'] as List).map((i) => Ranking.fromJson(i)).toList() : null, 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['type'] = this.type;
        if (this.ranking != null) {
            data['ranking'] = this.ranking.map((v) => v.toJson()).toList();
        }
        return data;
    }
}