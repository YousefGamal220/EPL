import 'package:arseli/Models/Period.dart';
import 'package:arseli/Models/Scores.dart';

class MatchDetails {
    int matchLengthMin;
    int matchLengthSec;
    String matchStatus;
    List<Period> period;
    int periodId;
    Scores scores;
    String winner;

    MatchDetails({this.matchLengthMin, this.matchLengthSec, this.matchStatus, this.period, this.periodId, this.scores, this.winner});

    factory MatchDetails.fromJson(Map<String, dynamic> json) {
        return MatchDetails(
            matchLengthMin: json['matchLengthMin'], 
            matchLengthSec: json['matchLengthSec'], 
            matchStatus: json['matchStatus'], 
            period: json['period'] != null ? (json['period'] as List).map((i) => Period.fromJson(i)).toList() : null, 
            periodId: json['periodId'], 
            scores: json['scores'] != null ? Scores.fromJson(json['scores']) : null, 
            winner: json['winner'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['matchLengthMin'] = this.matchLengthMin;
        data['matchLengthSec'] = this.matchLengthSec;
        data['matchStatus'] = this.matchStatus;
        data['periodId'] = this.periodId;
        data['winner'] = this.winner;
        if (this.period != null) {
            data['period'] = this.period.map((v) => v.toJson()).toList();
        }
        if (this.scores != null) {
            data['scores'] = this.scores.toJson();
        }
        return data;
    }
}