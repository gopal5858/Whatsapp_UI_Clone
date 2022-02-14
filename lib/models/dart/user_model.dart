import 'package:flutter/material.dart';

class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatar;
  ChatModel({this.name,this.message,this.time,this.avatar});
}
List<ChatModel> chatData = [
  ChatModel(
    name:"Rahul",
    message: "kal last date h",
    time: "11:30",
    avatar: "images/Rahul.jpg",
  ),
  ChatModel(
    name:"Neeraj",
    message: "hii",
    time: "5:30",
    avatar: "images/Neeraj.jpg",
  ),
  ChatModel(
    name:"Astik",
    message: "Tayari kesi h",
    time: "10:30",
    avatar: "images/astik.jpg",
  ),
  ChatModel(
    name:"Sumit",
    message: "lol😂😂🤣🤣",
    time: "6:30",
  ),
  ChatModel(
    name:"Gaurav",
    message: "bhai halat khrab h",
    time: "10:30",
    avatar: "images/Gaurav.jpg",
  ),
  ChatModel(
    name:"Nishant",
    message: "jaldi aa",
    time: "10:30",
    avatar: "images/Nishant.jpg",
  ),
  ChatModel(
    name:"Dakshana",
    message: "Inform to juniors...",
    time: "8:10",
    avatar: "images/no_group.jpg",
  ),
  ChatModel(
    name:"Valorant",
    message: "9 pm per custom",
    time: "7:30",
    avatar: "images/no_group.jpg",
  ),
  ChatModel(
    name:"family",
    message: "Good Night",
    time: "10:30",
    avatar: "images/no_group.jpg",
  ),
  ChatModel(
    name:"LOL",
    message: "nice",
    time: "10:30",
    avatar: "images/lol.png",
  ),

  ChatModel(
    name:"Pragati",
    message: "Hii",
    time: "9:10",
    avatar: "images/Pragati.jpg",
  ),
  ChatModel(
    name:"Vivek",
    message: "bla bla bla",
    time: "10:30",
    avatar: "images/Vivek.jpg",
  ),
];