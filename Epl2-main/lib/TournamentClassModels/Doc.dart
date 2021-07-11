import 'Competition.dart';
import 'PlayerTopPerformers.dart';
import 'TeamTopPerformers.dart';
import 'TournamentCalendar.dart';

class Doc {
    Competition competition;
    String id;
    String lastUpdated;
    PlayerTopPerformers playerTopPerformers;
    TeamTopPerformers teamTopPerformers;
    TournamentCalendar tournamentCalendar;

    Doc({this.competition, this.id, this.lastUpdated, this.playerTopPerformers, this.teamTopPerformers, this.tournamentCalendar});

    factory Doc.fromJson(Map<String, dynamic> json) {
        return Doc(
            competition: json['competition'] != null ? Competition.fromJson(json['competition']) : null, 
            id: json['id'], 
            lastUpdated: json['lastUpdated'], 
            playerTopPerformers: json['playerTopPerformers'] != null ? PlayerTopPerformers.fromJson(json['playerTopPerformers']) : null, 
            teamTopPerformers: json['teamTopPerformers'] != null ? TeamTopPerformers.fromJson(json['teamTopPerformers']) : null, 
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
        if (this.playerTopPerformers != null) {
            data['playerTopPerformers'] = this.playerTopPerformers.toJson();
        }
        if (this.teamTopPerformers != null) {
            data['teamTopPerformers'] = this.teamTopPerformers.toJson();
        }
        if (this.tournamentCalendar != null) {
            data['tournamentCalendar'] = this.tournamentCalendar.toJson();
        }
        return data;
    }
}