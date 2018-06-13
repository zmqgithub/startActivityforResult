import 'package:flutter/material.dart';
import 'activity_for_result.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Start Activity For Result'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String stringFromActivity = 'Start Activity To Change Me \n😀😀😀';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              stringFromActivity, style: new TextStyle(fontSize: 20.0), textAlign: TextAlign.center,
            ),
            new Container(height: 20.0,),
            new RaisedButton(child: new Text('Start Activity'),
              onPressed: () => _startActivity(),)
          ],
        ),
      ),
    );
  }

  Future _startActivity() async {

    Map results = await Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
      return new StartActivityForResult();
    }));

    if (results != null && results.containsKey('item')) {
      setState(() {
        stringFromActivity = results['item'];
        print(stringFromActivity);
      });
    }
  }
}
