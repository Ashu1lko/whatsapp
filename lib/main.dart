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
        theme: ThemeData(accentColor:Color(0xff075E54),primaryColor: Color(0xff25D366),
    ),)
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  TabController _tabController;
  void initState(){
    super.initState();
    _tabController=TabController(
      vsync: this,
      length=4;
    );
  }
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }
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
      ),
    );
        
      
    body:TabBarView(
      controller: _tabController
      children: <Widget>[
        camera(),
        chat(),
        status(),
        call_history();

      ],);
  }
}
