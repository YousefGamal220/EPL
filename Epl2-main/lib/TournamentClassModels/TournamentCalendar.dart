class TournamentCalendar {
    String endDate;
    String id;
    String name;
    int ocId;
    String startDate;

    TournamentCalendar({this.endDate, this.id, this.name, this.ocId, this.startDate});

    factory TournamentCalendar.fromJson(Map<String, dynamic> json) {
        return TournamentCalendar(
            endDate: json['endDate'], 
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
            startDate: json['startDate'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['endDate'] = this.endDate;
        data['id'] = this.id;
        data['name'] = this.name;
        data['ocId'] = this.ocId;
        data['startDate'] = this.startDate;
        return data;
    }
}