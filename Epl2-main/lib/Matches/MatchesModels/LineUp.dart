import 'package:arseli/Matches/MatchesModels/Player.dart';
import 'package:arseli/Matches/MatchesModels/TeamOfficial.dart';

class LineUp {
    String contestantId;
    String formationUsed;
    String ocContestantId;
    List<Player> player;
    TeamOfficial teamOfficial;

    LineUp({this.contestantId, this.formationUsed, this.ocContestantId, this.player, this.teamOfficial});

    factory LineUp.fromJson(Map<String, dynamic> json) {
        return LineUp(
            contestantId: json['contestantId'], 
            formationUsed: json['formationUsed'], 
            ocContestantId: json['ocContestantId'], 
            player: json['player'] != null ? (json['player'] as List).map((i) => Player.fromJson(i)).toList() : null, 
            teamOfficial: json['teamOfficial'] != null ? TeamOfficial.fromJson(json['teamOfficial']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['contestantId'] = this.contestantId;
        data['formationUsed'] = this.formationUsed;
        data['ocContestantId'] = this.ocContestantId;
        if (this.player != null) {
            data['player'] = this.player.map((v) => v.toJson()).toList();
        }
        if (this.teamOfficial != null) {
            data['teamOfficial'] = this.teamOfficial.toJson();
        }
        return data;
    }
}