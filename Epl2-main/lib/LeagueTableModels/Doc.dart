import 'package:arseli/LeagueTableModels/LiveData.dart';
import 'package:arseli/LeagueTableModels/MatchInfo.dart';

class Doc {
    String id;
    LiveData liveData;
    MatchInfo matchInfo;

    Doc({this.id, this.liveData, this.matchInfo});

    factory Doc.fromJson(Map<String, dynamic> json) {
        return Doc(
            id: json['id'], 
            liveData: json['liveData'] != null ? LiveData.fromJson(json['liveData']) : null, 
            matchInfo: json['matchInfo'] != null ? MatchInfo.fromJson(json['matchInfo']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        if (this.liveData != null) {
            data['liveData'] = this.liveData.toJson();
        }
        if (this.matchInfo != null) {
            data['matchInfo'] = this.matchInfo.toJson();
        }
        return data;
    }
}