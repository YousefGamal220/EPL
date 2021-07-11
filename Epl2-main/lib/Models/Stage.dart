class Stage {
    String endDate;
    String formatId;
    String id;
    String name;
    String ocId;
    String startDate;

    Stage({this.endDate, this.formatId, this.id, this.name, this.ocId, this.startDate});

    factory Stage.fromJson(Map<String, dynamic> json) {
        return Stage(
            endDate: json['endDate'], 
            formatId: json['formatId'], 
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
            startDate: json['startDate'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['endDate'] = this.endDate;
        data['formatId'] = this.formatId;
        data['id'] = this.id;
        data['name'] = this.name;
        data['ocId'] = this.ocId;
        data['startDate'] = this.startDate;
        return data;
    }
}