import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/dart/user_model.dart';
import 'package:whatsapp_clone/screens/message_page.dart';


class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack( children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/whats.jpg'
              ),
                  fit: BoxFit.cover,
            )
          ),
        ),
      Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('images/no_image.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Rahul'),
            ),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.video_call),
              onPressed: (){
                print('Video call button is Clicked');
              }),
          IconButton(icon: Icon(Icons.call),
              onPressed: (){
                print('call button is Clicked');
              }),
          IconButton(icon: Icon(Icons.more_vert),
              onPressed: (){
                print('Three dot button is Clicked');
              }),
        ],
      ),
      body: Column(
          children: [
            Expanded(
              child: MessagePage(),
            ),
            Container(
             alignment: Alignment.bottomCenter,
             padding: EdgeInsets.all(16.0),
             child: Row(
               children: [
                 Flexible(child: TextFormField(
                   minLines: 1,
                   maxLines: 4,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.grey,width: 1.0),
                      ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.grey,width: 1.0)
                        ),
                      hintText: 'Type a message',
                    ),

                 )),
               ],
             ),
            ),
        ]
      ),
    )]);
  }
}
