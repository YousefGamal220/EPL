class Ranking {
    int achievementStatus;
    int achievementStatus1;
    int achievementStatus2;
    int achievementStatus3;
    int achievementStatus4;
    int achievementType;
    int achievementType1;
    int achievementType2;
    int achievementType3;
    int achievementType4;
    String contestantClubName;
    String contestantCode;
    String contestantId;
    String contestantName;
    String contestantShortName;
    String goaldifference;
    int goalsAgainst;
    int goalsFor;
    int lastRank;
    String lastSix;
    int matchesDrawn;
    int matchesLost;
    int matchesPlayed;
    int matchesWon;
    String ocContestantId;
    int points;
    int rank;
    String rankId;
    String rankStatus;


    Ranking({this.achievementStatus, this.achievementStatus1, this.achievementStatus2, this.achievementStatus3, this.achievementStatus4, this.achievementType, this.achievementType1, this.achievementType2, this.achievementType3, this.achievementType4, this.contestantClubName, this.contestantCode, this.contestantId, this.contestantName, this.contestantShortName, this.goaldifference, this.goalsAgainst, this.goalsFor, this.lastRank, this.lastSix, this.matchesDrawn, this.matchesLost, this.matchesPlayed, this.matchesWon, this.ocContestantId, this.points, this.rank, this.rankId, this.rankStatus});

    factory Ranking.fromJson(Map<String, dynamic> json) {
        return Ranking(
            achievementStatus: json['achievementStatus'], 
            achievementStatus1: json['achievementStatus1'], 
            achievementStatus2: json['achievementStatus2'], 
            achievementStatus3: json['achievementStatus3'], 
            achievementStatus4: json['achievementStatus4'], 
            achievementType: json['achievementType'], 
            achievementType1: json['achievementType1'], 
            achievementType2: json['achievementType2'], 
            achievementType3: json['achievementType3'], 
            achievementType4: json['achievementType4'], 
            contestantClubName: json['contestantClubName'], 
            contestantCode: json['contestantCode'], 
            contestantId: json['contestantId'], 
            contestantName: json['contestantName'], 
            contestantShortName: json['contestantShortName'], 
            goaldifference: json['goaldifference'], 
            goalsAgainst: json['goalsAgainst'], 
            goalsFor: json['goalsFor'], 
            lastRank: json['lastRank'], 
            lastSix: json['lastSix'], 
            matchesDrawn: json['matchesDrawn'], 
            matchesLost: json['matchesLost'], 
            matchesPlayed: json['matchesPlayed'], 
            matchesWon: json['matchesWon'], 
            ocContestantId: json['ocContestantId'], 
            points: json['points'], 
            rank: json['rank'], 
            rankId: json['rankId'], 
            rankStatus: json['rankStatus'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['achievementStatus'] = this.achievementStatus;
        data['achievementStatus1'] = this.achievementStatus1;
        data['achievementStatus2'] = this.achievementStatus2;
        data['achievementStatus3'] = this.achievementStatus3;
        data['achievementStatus4'] = this.achievementStatus4;
        data['achievementType'] = this.achievementType;
        data['achievementType1'] = this.achievementType1;
        data['achievementType2'] = this.achievementType2;
        data['achievementType3'] = this.achievementType3;
        data['achievementType4'] = this.achievementType4;
        data['contestantClubName'] = this.contestantClubName;
        data['contestantCode'] = this.contestantCode;
        data['contestantId'] = this.contestantId;
        data['contestantName'] = this.contestantName;
        data['contestantShortName'] = this.contestantShortName;
        data['goaldifference'] = this.goaldifference;
        data['goalsAgainst'] = this.goalsAgainst;
        data['goalsFor'] = this.goalsFor;
        data['lastRank'] = this.lastRank;
        data['lastSix'] = this.lastSix;
        data['matchesDrawn'] = this.matchesDrawn;
        data['matchesLost'] = this.matchesLost;
        data['matchesPlayed'] = this.matchesPlayed;
        data['matchesWon'] = this.matchesWon;
        data['ocContestantId'] = this.ocContestantId;
        data['points'] = this.points;
        data['rank'] = this.rank;
        data['rankId'] = this.rankId;
        data['rankStatus'] = this.rankStatus;
        return data;
    }
}