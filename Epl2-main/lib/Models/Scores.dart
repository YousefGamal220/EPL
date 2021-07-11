import 'package:arseli/Models/Ft.dart';
import 'package:arseli/Models/Ht.dart';
import 'package:arseli/Models/Total.dart';

class Scores {
    Ft ft;
    Ht ht;
    Total total;

    Scores({this.ft, this.ht, this.total});

    factory Scores.fromJson(Map<String, dynamic> json) {
        return Scores(
            ft: json['ft'] != null ? Ft.fromJson(json['ft']) : null, 
            ht: json['ht'] != null ? Ht.fromJson(json['ht']) : null, 
            total: json['total'] != null ? Total.fromJson(json['total']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.ft != null) {
            data['ft'] = this.ft.toJson();
        }
        if (this.ht != null) {
            data['ht'] = this.ht.toJson();
        }
        if (this.total != null) {
            data['total'] = this.total.toJson();
        }
        return data;
    }
}