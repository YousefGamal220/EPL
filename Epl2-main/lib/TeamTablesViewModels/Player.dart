class Player {
    String active;
    String firstName;
    String id;

    String lastName;
    String matchName;
    String nationality;
    String nationalityId;
    String ocId;
    String placeOfBirth;
    String position;
    String type;

    Player({this.active, this.firstName, this.id, this.lastName, this.matchName, this.nationality, this.nationalityId, this.ocId, this.placeOfBirth, this.position, this.type});

    factory Player.fromJson(Map<String, dynamic> json) {
        return Player(
            active: json['active'], 
            firstName: json['firstName'], 
            id: json['id'],
            lastName: json['lastName'], 
            matchName: json['matchName'], 
            nationality: json['nationality'], 
            nationalityId: json['nationalityId'], 
            ocId: json['ocId'], 
            placeOfBirth: json['placeOfBirth'], 
            position: json['position'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['active'] = this.active;
        data['firstName'] = this.firstName;
        data['id'] = this.id;
        data['lastName'] = this.lastName;
        data['matchName'] = this.matchName;
        data['nationality'] = this.nationality;
        data['nationalityId'] = this.nationalityId;
        data['ocId'] = this.ocId;
        data['placeOfBirth'] = this.placeOfBirth;
        data['position'] = this.position;
        data['type'] = this.type;
        return data;
    }
}