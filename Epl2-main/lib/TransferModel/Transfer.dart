class Transfer {
    String announcedDate;
    String fromContestantId;
    String fromContestantName;
    String fromOcContestantId;
    String type;

    Transfer({this.announcedDate, this.fromContestantId, this.fromContestantName, this.fromOcContestantId, this.type});

    factory Transfer.fromJson(Map<String, dynamic> json) {
        return Transfer(
            announcedDate: json['announcedDate'], 
            fromContestantId: json['fromContestantId'], 
            fromContestantName: json['fromContestantName'], 
            fromOcContestantId: json['fromOcContestantId'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['announcedDate'] = this.announcedDate;
        data['fromContestantId'] = this.fromContestantId;
        data['fromContestantName'] = this.fromContestantName;
        data['fromOcContestantId'] = this.fromOcContestantId;
        data['type'] = this.type;
        return data;
    }
}