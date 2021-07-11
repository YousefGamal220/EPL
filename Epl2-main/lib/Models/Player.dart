class Player {
    String captain;
    String firstName;
    String formationPlace;
    String lastName;
    String matchName;
    String ocPlayerId;
    String playerId;
    String position;
    String positionSide;
    int shirtNumber;
    String subPosition;

    Player({this.captain, this.firstName, this.formationPlace, this.lastName, this.matchName, this.ocPlayerId, this.playerId, this.position, this.positionSide, this.shirtNumber, this.subPosition});

    factory Player.fromJson(Map<String, dynamic> json) {
        return Player(
            captain: json['captain'], 
            firstName: json['firstName'], 
            formationPlace: json['formationPlace'], 
            lastName: json['lastName'], 
            matchName: json['matchName'], 
            ocPlayerId: json['ocPlayerId'], 
            playerId: json['playerId'], 
            position: json['position'], 
            positionSide: json['positionSide'], 
            shirtNumber: json['shirtNumber'], 
            subPosition: json['subPosition'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['captain'] = this.captain;
        data['firstName'] = this.firstName;
        data['formationPlace'] = this.formationPlace;
        data['lastName'] = this.lastName;
        data['matchName'] = this.matchName;
        data['ocPlayerId'] = this.ocPlayerId;
        data['playerId'] = this.playerId;
        data['position'] = this.position;
        data['positionSide'] = this.positionSide;
        data['shirtNumber'] = this.shirtNumber;
        data['subPosition'] = this.subPosition;
        return data;
    }
}