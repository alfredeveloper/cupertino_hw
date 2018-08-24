import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
  debugShowCheckedModeBanner: false,
));


class MyApp extends StatefulWidget{
  @override
  _State createState()=> new _State();
}

class _State extends State<MyApp>{

  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: new CupertinoDialog(
          child: new CupertinoButton(child: new Text(message),),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: new Text("Cupertino"),
        trailing: new Icon(CupertinoIcons.search),
      ),
      child: new Container(
        padding: EdgeInsets.all(80.0),
        child: new Center(
          child: new Column(
            children: <Widget>[

              new CupertinoButton(
                child: new Text("Presione"),
                onPressed: ()=>_showAlert(context, '\nHola Hundo\n'),

              ),

            ],
          ),
        ),
      ),

    );
  }
}


