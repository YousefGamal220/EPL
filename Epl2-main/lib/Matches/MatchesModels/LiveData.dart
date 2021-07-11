import 'package:arseli/Matches/MatchesModels/LineUp.dart';
import 'package:arseli/Matches/MatchesModels/MatchDetails.dart';
import 'package:arseli/Matches/MatchesModels/MatchDetailsExtra.dart';

class LiveData {
    List<LineUp> lineUp;
    MatchDetails matchDetails;
    MatchDetailsExtra matchDetailsExtra;

    LiveData({this.lineUp, this.matchDetails, this.matchDetailsExtra});

    factory LiveData.fromJson(Map<String, dynamic> json) {
        return LiveData(
            lineUp: json['lineUp'] != null ? (json['lineUp'] as List).map((i) => LineUp.fromJson(i)).toList() : null, 
            matchDetails: json['matchDetails'] != null ? MatchDetails.fromJson(json['matchDetails']) : null, 
            matchDetailsExtra: json['matchDetailsExtra'] != null ? MatchDetailsExtra.fromJson(json['matchDetailsExtra']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.lineUp != null) {
            data['lineUp'] = this.lineUp.map((v) => v.toJson()).toList();
        }
        if (this.matchDetails != null) {
            data['matchDetails'] = this.matchDetails.toJson();
        }
        if (this.matchDetailsExtra != null) {
            data['matchDetailsExtra'] = this.matchDetailsExtra.toJson();
        }
        return data;
    }
}