import 'dart:math';

import 'package:flutter/material.dart';



class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewPage"),
      ),

//      body: _getGridView(),
    body: _getGridViewBuider(),
    );

  }


//  性能比较高
  Widget _getGridViewBuider(){


    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
    ), itemBuilder:  (BuildContext context, int index){

      return Container(
          // Random().nextInt(255)随机
          color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
      );
    });


  }





  //GridView gridDelegate
  Widget _getGridView(){


    return Padding(
      //Padding设置最左侧和右侧 上和下
//      padding: const EdgeInsets.all(8.0),
//    只设置水平方向
    padding: const EdgeInsets.symmetric(horizontal: 8),

      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

        //交叉轴的数量
          crossAxisCount:3,
          crossAxisSpacing:8, //交叉轴的间距
          mainAxisSpacing:8, //主轴的间距

//        childAspectRatio:0.5, //设置比例
      ),

        children: List.generate(50, (index) {
          return Container(
            // Random().nextInt(255)随机
            color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
          );
        })

      ),
    );


  }


}
