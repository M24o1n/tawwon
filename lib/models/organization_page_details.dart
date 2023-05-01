class OrganizationPageDetails {
  String? time;
  List<String>? types;
  String? name;
  String? description;

  OrganizationPageDetails({
    this.time,
    this.types,
    this.name,
    this.description,
  });

  factory OrganizationPageDetails.fromMap(Map<String, dynamic> json) =>
      OrganizationPageDetails(
        time: json['time'],
        types: json['types'].cast<String>(),
        name: json['name'],
        description: json['description'],
      );

  Map<String, dynamic> toMap() => {
        'time': time,
        'types': types,
        'name': name,
        'description': description,
      };
}
