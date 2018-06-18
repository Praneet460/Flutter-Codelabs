import 'package:flutter/material.dart';

class Bottomfiles extends StatefulWidget {
  @override
  _BottomfilesState createState() => new _BottomfilesState();
}

class _BottomfilesState extends State<Bottomfiles> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          color: Theme.of(context).cardColor),
      height: 40.0,

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.keyboard,
            color:  Colors.grey,
          ),
              onPressed: (){}
          ),
          new IconButton(
              icon: new Icon(Icons.insert_emoticon,
                color: Colors.grey,),
              onPressed: (){}
              ),
          new IconButton(
              icon: new Icon(Icons.insert_photo,
                color: Colors.grey,),

              onPressed: (){}
          ),
          new IconButton(
              icon: new Icon(Icons.insert_drive_file,
                color: Colors.grey,),
              onPressed: (){}
          ),
          new IconButton(
              icon: new Icon(Icons.camera_alt,
                color: Colors.grey,),
              onPressed: (){}),
          new IconButton(
              icon: new Icon(Icons.location_on,
                color: Colors.grey,),
              onPressed: (){})


        ],
      ),
    );
  }
}
