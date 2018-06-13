import 'package:flutter/material.dart';

class StartActivityForResult extends StatelessWidget{

  List<String>list = ['😀😀😀','😆😆😆','😍😍😍','😋😋😋','😡😡😡','👿👿👿','🎃','🤖','👾',];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Selecte Smily'),
      ),
      body: new ListView.builder(itemBuilder: (context, i){
        return new ListTile(title: new Text(list[i]),
          onTap: (){
            Navigator.of(context).pop({'item': list[i]});
          },
        );
      }, itemCount: list.length,),
    );
  }
}