import 'package:flutter/material.dart';
import 'package:friendlychat/view/chatscreen.dart';
class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendlychat",
      home: new ChatScreen(),
    );
  }
}
