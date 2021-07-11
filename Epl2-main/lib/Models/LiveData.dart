import 'package:arseli/Models/Card.dart';
import 'package:arseli/Models/Goal.dart';
import 'package:arseli/Models/LineUp.dart';
import 'package:arseli/Models/MatchDetails.dart';
import 'package:arseli/Models/MatchDetailsExtra.dart';
import 'package:arseli/Models/Substitute.dart';
import 'package:arseli/Models/VAR.dart';

class LiveData {
    List<Card> card;
    List<Goal> goal;
    List<LineUp> lineUp;
    MatchDetails matchDetails;
    MatchDetailsExtra matchDetailsExtra;
    List<Substitute> substitute;
    List<VAR> vAR;

    LiveData({this.card, this.goal, this.lineUp, this.matchDetails, this.matchDetailsExtra, this.substitute, this.vAR});

    factory LiveData.fromJson(Map<String, dynamic> json) {
        return LiveData(
            card: json['card'] != null ? (json['card'] as List).map((i) => Card.fromJson(i)).toList() : null, 
            goal: json['goal'] != null ? (json['goal'] as List).map((i) => Goal.fromJson(i)).toList() : null, 
            lineUp: json['lineUp'] != null ? (json['lineUp'] as List).map((i) => LineUp.fromJson(i)).toList() : null, 
            matchDetails: json['matchDetails'] != null ? MatchDetails.fromJson(json['matchDetails']) : null, 
            matchDetailsExtra: json['matchDetailsExtra'] != null ? MatchDetailsExtra.fromJson(json['matchDetailsExtra']) : null, 
            substitute: json['substitute'] != null ? (json['substitute'] as List).map((i) => Substitute.fromJson(i)).toList() : null, 
            vAR: json['vAR'] != null ? (json['vAR'] as List).map((i) => VAR.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.card != null) {
            data['card'] = this.card.map((v) => v.toJson()).toList();
        }
        if (this.goal != null) {
            data['goal'] = this.goal.map((v) => v.toJson()).toList();
        }
        if (this.lineUp != null) {
            data['lineUp'] = this.lineUp.map((v) => v.toJson()).toList();
        }
        if (this.matchDetails != null) {
            data['matchDetails'] = this.matchDetails.toJson();
        }
        if (this.matchDetailsExtra != null) {
            data['matchDetailsExtra'] = this.matchDetailsExtra.toJson();
        }
        if (this.substitute != null) {
            data['substitute'] = this.substitute.map((v) => v.toJson()).toList();
        }
        if (this.vAR != null) {
            data['vAR'] = this.vAR.map((v) => v.toJson()).toList();
        }
        return data;
    }
}