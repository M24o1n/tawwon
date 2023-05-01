class Organization {
  String? name;
  int? ID;
  List<String>? types;

  Organization({
    this.name,
    this.ID,
    this.types,
  });

  factory Organization.fromMap(Map<String, dynamic> json) => Organization(
        name: json['name'],
        ID: json['ID'],
        types: json['types'].cast<String>(),
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'ID': ID,
        'types': types,
      };
}
