import 'package:flutter/material.dart';

class CallModel{
  final String name;
  final Icon callType;
  final String time;
  final String avatar;
  CallModel({this.name,this.callType,this.time,this.avatar});
  static Icon callReceived = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = Icon(
    Icons.call_missed,
    color: Colors.red,
  );
}
List<CallModel> callData = [
  CallModel(
    name:"Sumit",
    time: "6:30",
    callType: CallModel.callMissed,
  ),
  CallModel(
    name:"Neeraj",
    time: "5:30",
    callType: CallModel.callReceived,
    avatar: "images/Neeraj.jpg",
  ),
  CallModel(
    name:"Astik",
    time: "10:30",
    callType: CallModel.callMissed,
    avatar: "images/astik.jpg",
  ),

  CallModel(
    name:"Nishant",
    time: "10:30",
    callType: CallModel.callReceived,
    avatar: "images/Nishant.jpg",
  ),
  CallModel(
    name:"Rahul",
    time: "11:30",
    callType: CallModel.callMissed,
    avatar: "images/Rahul.jpg",
  ),
  CallModel(
    name:"Gaurav",
    time: "10:30",
    callType: CallModel.callReceived,
    avatar: "images/Gaurav.jpg",
  ),
  CallModel(
    name:"Vivek",
    time: "10:30",
    callType: CallModel.callReceived,
    avatar: "images/Vivek.jpg",
  ),
  CallModel(
    name:"Pragati",
    time: "9:10",
    callType: CallModel.callMissed,
    avatar: "images/Pragati.jpg",
  ),

];