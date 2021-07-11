
import 'package:arseli/TeamTables/Competition.dart';
import 'package:arseli/TeamTables/Ruleset.dart';
import 'package:arseli/TeamTables/Sport.dart';
import 'package:arseli/TeamTables/Stage.dart';
import 'package:arseli/TeamTables/TournamentCalendar.dart';

class Doc {
    Competition competition;
    String id;
    String lastUpdated;
    Ruleset ruleset;
    Sport sport;
    List<Stage> stage;
    TournamentCalendar tournamentCalendar;

    Doc({this.competition, this.id, this.lastUpdated, this.ruleset, this.sport, this.stage, this.tournamentCalendar});

    factory Doc.fromJson(Map<String, dynamic> json) {
        return Doc(
            competition: json['competition'] != null ? Competition.fromJson(json['competition']) : null, 
            id: json['id'], 
            lastUpdated: json['lastUpdated'], 
            ruleset: json['ruleset'] != null ? Ruleset.fromJson(json['ruleset']) : null, 
            sport: json['sport'] != null ? Sport.fromJson(json['sport']) : null, 
            stage: json['stage'] != null ? (json['stage'] as List).map((i) => Stage.fromJson(i)).toList() : null, 
            tournamentCalendar: json['tournamentCalendar'] != null ? TournamentCalendar.fromJson(json['tournamentCalendar']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['lastUpdated'] = this.lastUpdated;
        if (this.competition != null) {
            data['competition'] = this.competition.toJson();
        }
        if (this.ruleset != null) {
            data['ruleset'] = this.ruleset.toJson();
        }
        if (this.sport != null) {
            data['sport'] = this.sport.toJson();
        }
        if (this.stage != null) {
            data['stage'] = this.stage.map((v) => v.toJson()).toList();
        }
        if (this.tournamentCalendar != null) {
            data['tournamentCalendar'] = this.tournamentCalendar.toJson();
        }
        return data;
    }
}