import 'Transfer.dart';

class Membership {
    String active;
    String contestantId;
    String contestantName;
    String endDate;
    String ocContestantId;
    String startDate;
    Transfer transfer;

    Membership({this.active, this.contestantId, this.contestantName, this.endDate, this.ocContestantId, this.startDate, this.transfer});

    factory Membership.fromJson(Map<String, dynamic> json) {
        return Membership(
            active: json['active'], 
            contestantId: json['contestantId'], 
            contestantName: json['contestantName'], 
            endDate: json['endDate'], 
            ocContestantId: json['ocContestantId'], 
            startDate: json['startDate'], 
            transfer: json['transfer'] != null ? Transfer.fromJson(json['transfer']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['active'] = this.active;
        data['contestantId'] = this.contestantId;
        data['contestantName'] = this.contestantName;
        data['endDate'] = this.endDate;
        data['ocContestantId'] = this.ocContestantId;
        data['startDate'] = this.startDate;
        if (this.transfer != null) {
            data['transfer'] = this.transfer.toJson();
        }
        return data;
    }
}