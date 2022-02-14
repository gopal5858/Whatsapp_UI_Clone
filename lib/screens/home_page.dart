import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_page.dart';
import 'package:whatsapp_clone/screens/chat_page.dart';
import 'package:whatsapp_clone/screens/status_page.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController _TabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'Chats'),
    Tab(text: 'Status'),
    Tab(text: 'Calls'),
  ];
  @override
  void initState() {
    _TabController = TabController(length: 4,initialIndex: 1, vsync: this)
    ..addListener((){
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.search),
              onPressed: (){
            print('Search button is Clicked');
              }),
          IconButton(icon: Icon(Icons.more_vert),
              onPressed: (){
                print('Three Dot button is Clicked');
              })
        ],
        bottom: TabBar(
          controller: _TabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _TabController,
        children: [
          Text('Camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }
  _getFAB(){
    if(_TabController.index== 1){
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: ()=>print('Chats'));
    }
    else if(_TabController.index== 2){
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: ()=>print('Status'));
    }
    else if(_TabController.index== 3){
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: ()=>print('Calls'));
    }
    else{
      return null;
    }
  }
}