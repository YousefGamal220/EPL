import 'package:arseli/Models/Competition.dart';
import 'package:arseli/Models/Contestant.dart';
import 'package:arseli/Models/Stage.dart';
import 'package:arseli/Models/TournamentCalendar.dart';
import 'package:arseli/Models/Venue.dart';

class MatchInfo {
    String attendanceInfo;
    String attendanceInfoId;
    Competition competition;
    List<Contestant> contestant;
    String coverageLevel;
    String date;
    String description;
    String id;
    String lastUpdated;
    String ocId;
    Stage stage;
    String time;
    TournamentCalendar tournamentCalendar;
    Venue venue;
    String week;

    MatchInfo({this.attendanceInfo, this.attendanceInfoId, this.competition, this.contestant, this.coverageLevel, this.date, this.description, this.id, this.lastUpdated, this.ocId, this.stage, this.time, this.tournamentCalendar, this.venue, this.week});

    factory MatchInfo.fromJson(Map<String, dynamic> json) {
        return MatchInfo(
            attendanceInfo: json['attendanceInfo'], 
            attendanceInfoId: json['attendanceInfoId'], 
            competition: json['competition'] != null ? Competition.fromJson(json['competition']) : null, 
            contestant: json['contestant'] != null ? (json['contestant'] as List).map((i) => Contestant.fromJson(i)).toList() : null, 
            coverageLevel: json['coverageLevel'], 
            date: json['date'], 
            description: json['description'], 
            id: json['id'], 
            lastUpdated: json['lastUpdated'], 
            ocId: json['ocId'], 
            stage: json['stage'] != null ? Stage.fromJson(json['stage']) : null, 
            time: json['time'], 
            tournamentCalendar: json['tournamentCalendar'] != null ? TournamentCalendar.fromJson(json['tournamentCalendar']) : null, 
            venue: json['venue'] != null ? Venue.fromJson(json['venue']) : null, 
            week: json['week'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['attendanceInfo'] = this.attendanceInfo;
        data['attendanceInfoId'] = this.attendanceInfoId;
        data['coverageLevel'] = this.coverageLevel;
        data['date'] = this.date;
        data['description'] = this.description;
        data['id'] = this.id;
        data['lastUpdated'] = this.lastUpdated;
        data['ocId'] = this.ocId;
        data['time'] = this.time;
        data['week'] = this.week;
        if (this.competition != null) {
            data['competition'] = this.competition.toJson();
        }
        if (this.contestant != null) {
            data['contestant'] = this.contestant.map((v) => v.toJson()).toList();
        }
        if (this.stage != null) {
            data['stage'] = this.stage.toJson();
        }
        if (this.tournamentCalendar != null) {
            data['tournamentCalendar'] = this.tournamentCalendar.toJson();
        }
        if (this.venue != null) {
            data['venue'] = this.venue.toJson();
        }
        return data;
    }
}