import 'package:arseli/LeagueTableModels/MatchDetails.dart';
import 'package:arseli/LeagueTableModels/MatchDetailsExtra.dart';

class LiveData {
    MatchDetails matchDetails;
    MatchDetailsExtra matchDetailsExtra;

    LiveData({this.matchDetails, this.matchDetailsExtra});

    factory LiveData.fromJson(Map<String, dynamic> json) {
        return LiveData(
            matchDetails: json['matchDetails'] != null ? MatchDetails.fromJson(json['matchDetails']) : null, 
            matchDetailsExtra: json['matchDetailsExtra'] != null ? MatchDetailsExtra.fromJson(json['matchDetailsExtra']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.matchDetails != null) {
            data['matchDetails'] = this.matchDetails.toJson();
        }
        if (this.matchDetailsExtra != null) {
            data['matchDetailsExtra'] = this.matchDetailsExtra.toJson();
        }
        return data;
    }
}