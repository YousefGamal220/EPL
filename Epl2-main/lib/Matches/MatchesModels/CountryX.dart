class CountryX {
    String id;
    String name;

    CountryX({this.id, this.name});

    factory CountryX.fromJson(Map<String, dynamic> json) {
        return CountryX(
            id: json['id'], 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        return data;
    }
}