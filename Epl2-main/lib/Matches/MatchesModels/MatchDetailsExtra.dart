import 'package:arseli/Matches/MatchesModels/MatchOfficial.dart';

class MatchDetailsExtra {
    List<MatchOfficial> matchOfficial;

    MatchDetailsExtra({this.matchOfficial});

    factory MatchDetailsExtra.fromJson(Map<String, dynamic> json) {
        return MatchDetailsExtra(
            matchOfficial: json['matchOfficial'] != null ? (json['matchOfficial'] as List).map((i) => MatchOfficial.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.matchOfficial != null) {
            data['matchOfficial'] = this.matchOfficial.map((v) => v.toJson()).toList();
        }
        return data;
    }
}