class Total {
    int away;
    int home;

    Total({this.away, this.home});

    factory Total.fromJson(Map<String, dynamic> json) {
        return Total(
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