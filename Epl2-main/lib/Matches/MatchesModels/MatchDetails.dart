class MatchDetails {
    String matchStatus;
    int periodId;

    MatchDetails({this.matchStatus, this.periodId});

    factory MatchDetails.fromJson(Map<String, dynamic> json) {
        return MatchDetails(
            matchStatus: json['matchStatus'], 
            periodId: json['periodId'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['matchStatus'] = this.matchStatus;
        data['periodId'] = this.periodId;
        return data;
    }
}