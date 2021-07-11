class Venue {
    String id;
    String longName;
    String neutral;
    String shortName;

    Venue({this.id, this.longName, this.neutral, this.shortName});

    factory Venue.fromJson(Map<String, dynamic> json) {
        return Venue(
            id: json['id'], 
            longName: json['longName'], 
            neutral: json['neutral'], 
            shortName: json['shortName'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['longName'] = this.longName;
        data['neutral'] = this.neutral;
        data['shortName'] = this.shortName;
        return data;
    }
}