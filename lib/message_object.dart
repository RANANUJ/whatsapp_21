class MessageObject {
  String? dateTime;
  String? message;
  int? personType;

  MessageObject({
    this.dateTime,
    this.message,
    this.personType,
  });

  factory MessageObject.fromJson(Map<String, dynamic> json) => MessageObject(
        dateTime: json["dateTime"],
        message: json["message"],
        personType: json["personType"],
      );

  Map<String, dynamic> toJson() => {
        "dateTime": dateTime,
        "message": message,
        "personType": personType,
      };
}
