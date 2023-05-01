class Request {
  int? ID;
  int? donorID;
  int? organizationID;
  String? type;
  String? items;
  bool? isAccepted;

  Request({
    this.ID,
    this.donorID,
    this.organizationID,
    this.type,
    this.items,
    this.isAccepted,
  });

  factory Request.fromMap(Map<String, dynamic> json) => Request(
        ID: json['ID'],
        donorID: json['donorID'],
        organizationID: json['organizationID'],
        type: json['type'],
        items: json['items'],
        isAccepted: json['isAccepted'],
      );
      
  Map<String, dynamic> toMap() => {
        'ID': ID,
        'donorID': donorID,
        'organizationID': organizationID,
        'type': type,
        'items': items,
        'isAccepted': isAccepted,
      };
}
