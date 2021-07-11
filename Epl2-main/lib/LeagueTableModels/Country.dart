class Country {
    String id;
    String name;

    Country({this.id, this.name});

    factory Country.fromJson(Map<String, dynamic> json) {
        return Country(
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