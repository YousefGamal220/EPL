class Card {
    String cardReason;
    String contestantId;
    String lastUpdated;
    String ocContestantId;
    String ocPlayerId;
    String optaEventId;
    int periodId;
    String playerId;
    String playerName;
    int timeMin;
    String timeMinSec;
    String timestamp;
    String type;

    Card({this.cardReason, this.contestantId, this.lastUpdated, this.ocContestantId, this.ocPlayerId, this.optaEventId, this.periodId, this.playerId, this.playerName, this.timeMin, this.timeMinSec, this.timestamp, this.type});

    factory Card.fromJson(Map<String, dynamic> json) {
        return Card(
            cardReason: json['cardReason'], 
            contestantId: json['contestantId'], 
            lastUpdated: json['lastUpdated'], 
            ocContestantId: json['ocContestantId'], 
            ocPlayerId: json['ocPlayerId'], 
            optaEventId: json['optaEventId'], 
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
        data['cardReason'] = this.cardReason;
        data['contestantId'] = this.contestantId;
        data['lastUpdated'] = this.lastUpdated;
        data['ocContestantId'] = this.ocContestantId;
        data['ocPlayerId'] = this.ocPlayerId;
        data['optaEventId'] = this.optaEventId;
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