
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),


      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return Text("hello flutter ${index}");
          },
          separatorBuilder: (BuildContext context, int index){
            
          }, itemCount: null),
//      body:_getListViewGenerate(),
//      body:_getListViewBuider(),
    );
  }

  
  
  

  // ListView.builder用法
Widget _getListViewBuider(){

 return ListView.builder(
      itemCount: 50,
      itemExtent: 60,
      itemBuilder: (BuildContext ctx,int index){
        return Text("hello flutter ${index}");

      }

  );
    
}
  


//List.generate用法
  Widget _getListViewGenerate(){

  return  ListView(
      //行号  默认根据内容自适应高度
      itemExtent: 50,

      children: List.generate(100, (index){

        print('${index}');
        return ListTile(
          leading: Icon(Icons.location_city),
          trailing: Icon(Icons.delete),
          title: Text("手机号:1867355631${index}"),
          subtitle:Text("地址:深圳湾${index}号"),

        );

      }),

    );
  }


}




