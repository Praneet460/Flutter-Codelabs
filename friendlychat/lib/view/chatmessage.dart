import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  var profileimg = "assets/images/profile.jpg";
  final String text;
  final AnimationController animationController;
  ChatMessage({this.text, this.animationController});
  static const String _name = "Praneet Nigam";
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: new Container(

        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(
                right: 16.0,
              ),
              child: new CircleAvatar(
                backgroundImage: new AssetImage(profileimg),
              ),
              ),

            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(_name,
                    style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                    ),),
                  new SizedBox(height: 5.0,),
                  Material(
                    borderRadius: new BorderRadius.only(bottomLeft: new Radius.circular(8.0),
                        bottomRight: new Radius.circular(8.0), topRight: new Radius.circular(8.0)),
                      color: Colors.blue,
                    shadowColor: Colors.black,
                    child: new Container(

                      

                      margin: const EdgeInsets.only(top: 5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(text, style:
                          new TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,

                          ),),
                      ),
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
