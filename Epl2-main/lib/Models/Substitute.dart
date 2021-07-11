class Substitute {
    String contestantId;
    String lastUpdated;
    String ocContestantId;
    String ocPlayerOffId;
    String ocPlayerOnId;
    int periodId;
    String playerOffId;
    String playerOffName;
    String playerOnId;
    String playerOnName;
    String subReason;
    int timeMin;
    String timeMinSec;
    String timestamp;

    Substitute({this.contestantId, this.lastUpdated, this.ocContestantId, this.ocPlayerOffId, this.ocPlayerOnId, this.periodId, this.playerOffId, this.playerOffName, this.playerOnId, this.playerOnName, this.subReason, this.timeMin, this.timeMinSec, this.timestamp});

    factory Substitute.fromJson(Map<String, dynamic> json) {
        return Substitute(
            contestantId: json['contestantId'], 
            lastUpdated: json['lastUpdated'], 
            ocContestantId: json['ocContestantId'], 
            ocPlayerOffId: json['ocPlayerOffId'], 
            ocPlayerOnId: json['ocPlayerOnId'], 
            periodId: json['periodId'], 
            playerOffId: json['playerOffId'], 
            playerOffName: json['playerOffName'], 
            playerOnId: json['playerOnId'], 
            playerOnName: json['playerOnName'], 
            subReason: json['subReason'], 
            timeMin: json['timeMin'], 
            timeMinSec: json['timeMinSec'], 
            timestamp: json['timestamp'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['contestantId'] = this.contestantId;
        data['lastUpdated'] = this.lastUpdated;
        data['ocContestantId'] = this.ocContestantId;
        data['ocPlayerOffId'] = this.ocPlayerOffId;
        data['ocPlayerOnId'] = this.ocPlayerOnId;
        data['periodId'] = this.periodId;
        data['playerOffId'] = this.playerOffId;
        data['playerOffName'] = this.playerOffName;
        data['playerOnId'] = this.playerOnId;
        data['playerOnName'] = this.playerOnName;
        data['subReason'] = this.subReason;
        data['timeMin'] = this.timeMin;
        data['timeMinSec'] = this.timeMinSec;
        data['timestamp'] = this.timestamp;
        return data;
    }
}