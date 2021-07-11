class Ht {
    int away;
    int home;

    Ht({this.away, this.home});

    factory Ht.fromJson(Map<String, dynamic> json) {
        return Ht(
            away: json['away'], 
            home: json['home'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['away'] = this.away;
        data['home'] = this.home;
        return data;
    }
}