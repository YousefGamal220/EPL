class Sport {
    String id;
    String name;

    Sport({this.id, this.name});

    factory Sport.fromJson(Map<String, dynamic> json) {
        return Sport(
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