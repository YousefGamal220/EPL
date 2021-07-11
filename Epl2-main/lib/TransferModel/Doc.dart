import 'Membership.dart';

class Doc {
    String firstName;
    String id;
    String lastName;
    String matchName;
    List<Membership> membership;
    String nationality;
    String nationalityId;
    String ocId;
    String position;
    String type;

    Doc({this.firstName, this.id, this.lastName, this.matchName, this.membership, this.nationality, this.nationalityId, this.ocId, this.position, this.type});

    factory Doc.fromJson(Map<String, dynamic> json) {
        return Doc(
            firstName: json['firstName'], 
            id: json['id'], 
            lastName: json['lastName'], 
            matchName: json['matchName'], 
            membership: json['membership'] != null ? (json['membership'] as List).map((i) => Membership.fromJson(i)).toList() : null, 
            nationality: json['nationality'], 
            nationalityId: json['nationalityId'], 
            ocId: json['ocId'], 
            position: json['position'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['firstName'] = this.firstName;
        data['id'] = this.id;
        data['lastName'] = this.lastName;
        data['matchName'] = this.matchName;
        data['nationality'] = this.nationality;
        data['nationalityId'] = this.nationalityId;
        data['ocId'] = this.ocId;
        data['position'] = this.position;
        data['type'] = this.type;
        if (this.membership != null) {
            data['membership'] = this.membership.map((v) => v.toJson()).toList();
        }
        return data;
    }
}