class VAR {
    String contestantId;
    String decision;
    String lastUpdated;
    String ocContestantId;
    String ocPlayerId;
    String optaEventId;
    String outcome;
    int periodId;
    String playerId;
    String playerName;
    int timeMin;
    String timeMinSec;
    String timestamp;
    String type;

    VAR({this.contestantId, this.decision, this.lastUpdated, this.ocContestantId, this.ocPlayerId, this.optaEventId, this.outcome, this.periodId, this.playerId, this.playerName, this.timeMin, this.timeMinSec, this.timestamp, this.type});

    factory VAR.fromJson(Map<String, dynamic> json) {
        return VAR(
            contestantId: json['contestantId'], 
            decision: json['decision'], 
            lastUpdated: json['lastUpdated'], 
            ocContestantId: json['ocContestantId'], 
            ocPlayerId: json['ocPlayerId'], 
            optaEventId: json['optaEventId'], 
            outcome: json['outcome'], 
            periodId: json['periodId'], 
            playerId: json['playerId'], 
            playerName: json['playerName'], 
            timeMin: json['timeMin'], 
            timeMinSec: json['timeMinSec'], 
            timestamp: json['timestamp'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['contestantId'] = this.contestantId;
        data['decision'] = this.decision;
        data['lastUpdated'] = this.lastUpdated;
        data['ocContestantId'] = this.ocContestantId;
        data['ocPlayerId'] = this.ocPlayerId;
        data['optaEventId'] = this.optaEventId;
        data['outcome'] = this.outcome;
        data['periodId'] = this.periodId;
        data['playerId'] = this.playerId;
        data['playerName'] = this.playerName;
        data['timeMin'] = this.timeMin;
        data['timeMinSec'] = this.timeMinSec;
        data['timestamp'] = this.timestamp;
        data['type'] = this.type;
        return data;
    }
}