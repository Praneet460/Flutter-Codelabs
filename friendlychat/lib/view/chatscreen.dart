import 'package:flutter/material.dart';
import 'package:friendlychat/view/chatmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {

  final List<ChatMessage> _message = <ChatMessage>[];


  final TextEditingController _textController = new TextEditingController();
  bool _isComposing = false;
  var _appTitle = "Friendlychat";

  var _bgimg = "assets/images/bg.png";

  var _hintmsg = "Send a message";

  Widget _buildTextComposer() {
    return new Container(

      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: new TextField(
              controller: _textController,
              onChanged: (String text){
                setState(() {
                  _isComposing = text.length > 0;
                });
              },
              onSubmitted: _handleSubmitted,
              decoration: new InputDecoration.collapsed(
                  hintText: _hintmsg),
            ),
          ),
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 4.0),
            child: new IconButton(
                icon: new Icon(Icons.send),
                color: Colors.blue,
                onPressed: _isComposing ?
                    () =>
                    _handleSubmitted(_textController.text)
                    : null,
            ),
          ),

        ],
      ),

    );
  }

  void _handleSubmitted(String text){

    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    ChatMessage message = new ChatMessage(
      text: text,
      animationController: new AnimationController(
          vsync: this,
          duration: new Duration(
            milliseconds: 400
          ),),
    );
    setState(() {
      _message.insert(0,message);
    });
    message.animationController.forward();
  }

  @override
  void dispose() {
    for (ChatMessage message in _message)
      message.animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appTitle),
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
              child: new ListView.builder(
                  padding: new EdgeInsets.all(8.0),
                  reverse: true,
                  itemCount: _message.length,
                  itemBuilder: (_, int index) =>
                   _message[index], ),),
          new Divider(height: 1.0,),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
            ),

        ],
      ),
    );
  }
}

