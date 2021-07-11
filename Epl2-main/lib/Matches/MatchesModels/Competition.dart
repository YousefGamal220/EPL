import 'package:arseli/Matches/MatchesModels/CountryX.dart';

class Competition {
    String competitionCode;
    String competitionFormat;
    CountryX country;
    String id;
    String name;
    String ocId;

    Competition({this.competitionCode, this.competitionFormat, this.country, this.id, this.name, this.ocId});

    factory Competition.fromJson(Map<String, dynamic> json) {
        return Competition(
            competitionCode: json['competitionCode'], 
            competitionFormat: json['competitionFormat'], 
            country: json['country'] != null ? CountryX.fromJson(json['country']) : null, 
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['competitionCode'] = this.competitionCode;
        data['competitionFormat'] = this.competitionFormat;
        data['id'] = this.id;
        data['name'] = this.name;
        data['ocId'] = this.ocId;
        if (this.country != null) {
            data['country'] = this.country.toJson();
        }
        return data;
    }
}