class Competition {
    String id;
    String name;
    int ocId;

    Competition({this.id, this.name, this.ocId});

    factory Competition.fromJson(Map<String, dynamic> json) {
        return Competition(
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['ocId'] = this.ocId;
        return data;
    }
}