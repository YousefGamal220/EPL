import 'RankingX.dart';

class TeamTopPerformers {
    List<RankingX> ranking;

    TeamTopPerformers({this.ranking});

    factory TeamTopPerformers.fromJson(Map<String, dynamic> json) {
        return TeamTopPerformers(
            ranking: json['ranking'] != null ? (json['ranking'] as List).map((i) => RankingX.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.ranking != null) {
            data['ranking'] = this.ranking.map((v) => v.toJson()).toList();
        }
        return data;
    }
}