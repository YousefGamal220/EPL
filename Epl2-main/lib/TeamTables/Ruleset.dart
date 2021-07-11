class Ruleset {
    String id;
    String name;

    Ruleset({this.id, this.name});

    factory Ruleset.fromJson(Map<String, dynamic> json) {
        return Ruleset(
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