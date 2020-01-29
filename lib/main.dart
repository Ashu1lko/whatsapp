import 'package:flutter/material.dart';
import './call_history.dart';
import './camera.dart';
import './chat.dart';
import './status.dart';

void main()
{
  
    runApp(
      MaterialApp(
        home: MyApp(),
        title: 'WhatsApp',
        theme: ThemeData(accentColor:Colors.greenAccent,primaryColor: Colors.green,
    ),
    debugShowCheckedModeBanner: false,)

  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState(){
    super.initState();
  _tabController=TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',)
          ],
        ),
        actions: <Widget>[Icon(Icons.search),Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),Icon(Icons.more_vert)],
      ),
    body:TabBarView(
      controller: _tabController,
      children: <Widget>[
        Camera(),
        Chat(),
        Status(),
        CallHistory(),

      ],),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor ,
        child:Icon(Icons.message),
        onPressed: ()=>print("open chats"),
      ) ,
      
    );  
      
    
  }
}
