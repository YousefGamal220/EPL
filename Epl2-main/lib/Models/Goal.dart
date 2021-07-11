class Goal {
    String assistPlayerId;
    String assistPlayerName;
    int awayScore;
    String contestantId;
    int homeScore;
    String lastUpdated;
    String ocAssistPlayerId;
    String ocContestantId;
    String ocScorerId;
    String optaEventId;
    int periodId;
    String scorerId;
    String scorerName;
    int timeMin;
    String timeMinSec;
    String timestamp;
    String type;

    Goal({this.assistPlayerId, this.assistPlayerName, this.awayScore, this.contestantId, this.homeScore, this.lastUpdated, this.ocAssistPlayerId, this.ocContestantId, this.ocScorerId, this.optaEventId, this.periodId, this.scorerId, this.scorerName, this.timeMin, this.timeMinSec, this.timestamp, this.type});

    factory Goal.fromJson(Map<String, dynamic> json) {
        return Goal(
            assistPlayerId: json['assistPlayerId'], 
            assistPlayerName: json['assistPlayerName'], 
            awayScore: json['awayScore'], 
            contestantId: json['contestantId'], 
            homeScore: json['homeScore'], 
            lastUpdated: json['lastUpdated'], 
            ocAssistPlayerId: json['ocAssistPlayerId'], 
            ocContestantId: json['ocContestantId'], 
            ocScorerId: json['ocScorerId'], 
            optaEventId: json['optaEventId'], 
            periodId: json['periodId'], 
            scorerId: json['scorerId'], 
            scorerName: json['scorerName'], 
            timeMin: json['timeMin'], 
            timeMinSec: json['timeMinSec'], 
            timestamp: json['timestamp'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['assistPlayerId'] = this.assistPlayerId;
        data['assistPlayerName'] = this.assistPlayerName;
        data['awayScore'] = this.awayScore;
        data['contestantId'] = this.contestantId;
        data['homeScore'] = this.homeScore;
        data['lastUpdated'] = this.lastUpdated;
        data['ocAssistPlayerId'] = this.ocAssistPlayerId;
        data['ocContestantId'] = this.ocContestantId;
        data['ocScorerId'] = this.ocScorerId;
        data['optaEventId'] = this.optaEventId;
        data['periodId'] = this.periodId;
        data['scorerId'] = this.scorerId;
        data['scorerName'] = this.scorerName;
        data['timeMin'] = this.timeMin;
        data['timeMinSec'] = this.timeMinSec;
        data['timestamp'] = this.timestamp;
        data['type'] = this.type;
        return data;
    }
}