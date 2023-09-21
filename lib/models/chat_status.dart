// To parse this JSON data, do
//
//     final chatStatus = chatStatusFromJson(jsonString);

import 'dart:convert';

ChatStatus chatStatusFromJson(String str) => ChatStatus.fromJson(json.decode(str));

String chatStatusToJson(ChatStatus data) => json.encode(data.toJson());

class ChatStatus {
    String avatar;
    String name;
    String time;

    ChatStatus({
        required this.avatar,
        required this.name,
        required this.time,
    });

    factory ChatStatus.fromJson(Map<String, dynamic> json) => ChatStatus(
        avatar: json["avatar"],
        name: json["name"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "time": time,
    };
}
