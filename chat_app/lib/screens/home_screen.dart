import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/category_selector.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:chat_app/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            'CHIT-CHAT',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
            ),
          ]),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: <Widget>[
                FavoriteContacts(),
                RecentChats(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
