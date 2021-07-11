class Player {
    String contestantId;
    String contestantName;
    int contestantOcId;
    String firstName;
    String id;
    String lastName;
    String matchName;
    int ocId;
    int rank;
    int value;

    Player({this.contestantId, this.contestantName, this.contestantOcId, this.firstName, this.id, this.lastName, this.matchName, this.ocId, this.rank, this.value});

    factory Player.fromJson(Map<String, dynamic> json) {
        return Player(
            contestantId: json['contestantId'], 
            contestantName: json['contestantName'], 
            contestantOcId: json['contestantOcId'], 
            firstName: json['firstName'], 
            id: json['id'], 
            lastName: json['lastName'], 
            matchName: json['matchName'], 
            ocId: json['ocId'], 
            rank: json['rank'], 
            value: json['value'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['contestantId'] = this.contestantId;
        data['contestantName'] = this.contestantName;
        data['contestantOcId'] = this.contestantOcId;
        data['firstName'] = this.firstName;
        data['id'] = this.id;
        data['lastName'] = this.lastName;
        data['matchName'] = this.matchName;
        data['ocId'] = this.ocId;
        data['rank'] = this.rank;
        data['value'] = this.value;
        return data;
    }
}