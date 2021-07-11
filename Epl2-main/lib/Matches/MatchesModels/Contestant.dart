import 'package:arseli/Matches/MatchesModels/CountryX.dart';

class Contestant {
    String code;
    CountryX country;
    String id;
    String name;
    String ocId;
    String officialName;
    String position;
    String shortName;

    Contestant({this.code, this.country, this.id, this.name, this.ocId, this.officialName, this.position, this.shortName});

    factory Contestant.fromJson(Map<String, dynamic> json) {
        return Contestant(
            code: json['code'], 
            country: json['country'] != null ? CountryX.fromJson(json['country']) : null, 
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
            officialName: json['officialName'], 
            position: json['position'], 
            shortName: json['shortName'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['id'] = this.id;
        data['name'] = this.name;
        data['ocId'] = this.ocId;
        data['officialName'] = this.officialName;
        data['position'] = this.position;
        data['shortName'] = this.shortName;
        if (this.country != null) {
            data['country'] = this.country.toJson();
        }
        return data;
    }
}