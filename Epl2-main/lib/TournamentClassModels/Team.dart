class Team {
    String id;
    String name;
    int ocId;
    int rank;
    int value;

    Team({this.id, this.name, this.ocId, this.rank, this.value});

    factory Team.fromJson(Map<String, dynamic> json) {
        return Team(
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
            rank: json['rank'], 
            value: json['value'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['ocId'] = this.ocId;
        data['rank'] = this.rank;
        data['value'] = this.value;
        return data;
    }
}