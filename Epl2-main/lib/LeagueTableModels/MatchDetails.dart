import 'package:flutter/cupertino.dart';

class Total
{
    int home;
    int away;
    Total({this.home, this.away});
    factory Total.fromJson(Map<String, dynamic> json) {
        return Total(home: json['home'], away: json['away']);
    }
}
class Scores
{
    Total total;
    Scores({this.total});
    factory Scores.fromJson(Map<String, dynamic> json){
        return Scores(total: json['total'] != null ? Total.fromJson(json['total']) : null);
    }
}
class MatchDetails {
    String matchStatus;
    int periodId;
    String winner;
    String matchLengthMin;
    String matchLengthSec;
    Scores scores;

    MatchDetails({this.matchStatus, this.periodId, this.scores});

    factory MatchDetails.fromJson(Map<String, dynamic> json) {
        return MatchDetails(
            matchStatus: json['matchStatus'], 
            periodId: json['periodId'],
            scores: json['scores'] != null ? Scores.fromJson(json['scores']) : null
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['matchStatus'] = this.matchStatus;
        data['periodId'] = this.periodId;
        return data;
    }
}