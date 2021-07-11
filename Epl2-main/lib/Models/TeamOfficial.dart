class TeamOfficial {
    String firstName;
    String id;
    String lastName;
    String ocId;
    String type;

    TeamOfficial({this.firstName, this.id, this.lastName, this.ocId, this.type});

    factory TeamOfficial.fromJson(Map<String, dynamic> json) {
        return TeamOfficial(
            firstName: json['firstName'], 
            id: json['id'], 
            lastName: json['lastName'], 
            ocId: json['ocId'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['firstName'] = this.firstName;
        data['id'] = this.id;
        data['lastName'] = this.lastName;
        data['ocId'] = this.ocId;
        data['type'] = this.type;
        return data;
    }
}