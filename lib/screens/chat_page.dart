import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp_clone/models/dart/user_model.dart';
import 'package:whatsapp_clone/screens/chat_detail_page.dart';
class ChatPage extends StatefulWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}
  class _ChatPageState extends  State<ChatPage> {
    @override
  Widget build(BuildContext context){
      return Container(
      child: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (context,i)=> Column(
            children: [
              Divider(
              height: 5.0,
            ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(chatData[i].avatar ?? 'images/no_image.png'),
                ),
                title: Text(
                    chatData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                chatData[i].message,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
                trailing: Text(
                  chatData[i].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailPage()));
                },
              )
            ]
          )
      ),
      );
  }
}

