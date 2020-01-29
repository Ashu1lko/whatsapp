import 'package:flutter/material.dart';
import './model.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context,i)=>Column(
        children: <Widget>[
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(
             radius: 30.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(data[i].avatarurl),
            ),
            title: Row(children: <Widget>[
              Text(data[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),),
              
              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(data[i].time,
                style: TextStyle(color: Colors.grey,fontSize: 14.0),),
              )
            ],),
            subtitle:Container(padding:const EdgeInsets.only(
                 top: 5.0
            ),
            child: Text(data[i].message,
            style:TextStyle(color: Colors.grey,fontSize:15.0)),),
          )
        ],
      ),
    );
  }
}