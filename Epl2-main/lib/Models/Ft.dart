class Ft {
    int away;
    int home;

    Ft({this.away, this.home});

    factory Ft.fromJson(Map<String, dynamic> json) {
        return Ft(
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