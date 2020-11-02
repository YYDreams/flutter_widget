
import 'package:flutter/material.dart';


class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),


      body:ListView(
        //行号  默认根据内容自适应高度
        itemExtent: 100,

        children: List.generate(100, (index){

          print('${index}');
          return ListTile(
            leading: Icon(Icons.location_city),
            trailing: Icon(Icons.delete),
            title: Text("手机号:1867355631${index}"),
            subtitle:Text("地址:深圳湾${index}号"),


          );


        }),

      ),
    );
  }




}

