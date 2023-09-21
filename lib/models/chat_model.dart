
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

ChatModel ChatFromJson(String str) => ChatModel.fromJson(json.decode(str));

String ChatToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
    String avatar;
    String name;
    bool isGroup;
    String message;
    String updatedAt;

    ChatModel({
        required this.avatar,
        required this.name,
        required this.isGroup,
        required this.message,
        required this.updatedAt,
    });

    factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        avatar: json["avatar"],
        name: json["name"],
        isGroup: json["isGroup"],
        message: json["message"],
        updatedAt: json["updatedAt"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isGroup": isGroup,
        "message": message,
        "updatedAt": updatedAt,
    };
}


// import 'dart:convert';

// Chat ChatFromJson(String str) => Chat.fromJson(json.decode(str));

// String ChatToJson(Chat data) => json.encode(data.toJson());

// class Chat {
//     Chat({
//         this.avatar,
//         this.name,
//         this.isGroup,
//         this.updatedAt,
//         this.message, 
//         this.status,
//     });

//     String? avatar;
//     String? name;
//     bool? isGroup;
//     String? updatedAt;
//     String? message;
//     String? status;

//     factory Chat.fromJson(Map<String, dynamic> json) => Chat(
//         avatar: json["avatar"],
//         name: json["name"],
//         isGroup: json["isGroup"],
//         updatedAt: json["updatedAt"],
//         message: json["message"],
//         status: json["status"],
//     );

 

//     Map<String, dynamic> toJson() => {
//         "avatar": avatar,
//         "name": name,
//         "isGroup": isGroup,
//         "updatedAt": updatedAt,
//         "message": message,
//         "status" : status,
//     };
// }


