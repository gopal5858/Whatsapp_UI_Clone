import 'package:flutter/material.dart';

class StatusModel{
  final String name;
  final String time;
  final String avatar;
  StatusModel({this.name,this.time,this.avatar});
}
List<StatusModel> statusData = [
  StatusModel(
    name:"Sumit",
    time: "6:30",
  ),
  StatusModel(
    name:"Neeraj",
    time: "5:30",
    avatar: "images/Neeraj.jpg",
  ),
  StatusModel(
    name:"Astik",
    time: "10:30",
    avatar: "images/astik.jpg",
  ),

  StatusModel(
    name:"Nishant",
    time: "10:30",
    avatar: "images/Nishant.jpg",
  ),
  StatusModel(
    name:"Rahul",
    time: "11:30",
    avatar: "images/Rahul.jpg",
  ),
  StatusModel(
    name:"Gaurav",
    time: "10:30",
    avatar: "images/Gaurav.jpg",
  ),
];