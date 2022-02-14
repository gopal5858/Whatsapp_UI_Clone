import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/dart/status_model.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage('images/no_image.png'),
          ),
          title: Text(
            'My Status',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
          onTap: (){
            print('My own Status opened');
          },
        ),
        Divider(
          height: 10.0,
        ),
        Padding(
            padding: EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Recent updates',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        Divider(),
        Flexible(
            child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context,i)=>Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(statusData[i].avatar ?? 'images/no_image.png'),
                    ),
                    title: Text(
                      statusData[i].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      statusData[i].time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                    onTap: (){
                      print('Status details open');
                    }
                  ),
                  Divider(
                    height: 10.0,
                  ),
                ],
                ),
            ),
        )
      ],
    );
  }
}
