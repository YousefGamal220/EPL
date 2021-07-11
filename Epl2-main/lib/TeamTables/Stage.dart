import 'package:arseli/TeamTables/Division.dart';

class Stage {
    List<Division> division;
    String endDate;
    String formatId;
    String id;
    String name;
    String ocId;
    List<dynamic> pointDeduction;
    String startDate;
    int vertical;

    Stage({this.division, this.endDate, this.formatId, this.id, this.name, this.ocId, this.pointDeduction, this.startDate, this.vertical});

    factory Stage.fromJson(Map<String, dynamic> json) {
        return Stage(
            division: json['division'] != null ? (json['division'] as List).map((i) => Division.fromJson(i)).toList() : null, 
            endDate: json['endDate'], 
            formatId: json['formatId'], 
            id: json['id'], 
            name: json['name'], 
            ocId: json['ocId'], 
            pointDeduction: json['pointDeduction'] != null ? json['pointDeduction'] : null,
            startDate: json['startDate'], 
            vertical: json['vertical'], 
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
        data['vertical'] = this.vertical;
        if (this.division != null) {
            data['division'] = this.division.map((v) => v.toJson()).toList();
        }
        if (this.pointDeduction != null) {
            data['pointDeduction'] = this.pointDeduction.map((v) => v.toJson()).toList();
        }
        return data;
    }
}