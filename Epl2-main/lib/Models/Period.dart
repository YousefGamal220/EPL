class Period {
    String end;
    int id;
    int lengthMin;
    int lengthSec;
    String start;

    Period({this.end, this.id, this.lengthMin, this.lengthSec, this.start});

    factory Period.fromJson(Map<String, dynamic> json) {
        return Period(
            end: json['end'], 
            id: json['id'], 
            lengthMin: json['lengthMin'], 
            lengthSec: json['lengthSec'], 
            start: json['start'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['end'] = this.end;
        data['id'] = this.id;
        data['lengthMin'] = this.lengthMin;
        data['lengthSec'] = this.lengthSec;
        data['start'] = this.start;
        return data;
    }
}