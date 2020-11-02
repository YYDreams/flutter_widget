
import 'package:flutter/material.dart';


class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Row的特点
//  水平方向尽可能占据比较大的控件
//  如果水平方向也是希望包裹内容，那么设置mainAxisSize = min 默认是max


    return Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
      body: Container(
      color: Colors.white,
      child: Row(
/*
*  MainAxisAlignment
* 水平是主轴
* start 沿着主轴的开始位置挨个摆放（默认值）
* end   沿着主轴的结束位置挨个摆放
* center 主轴的中心点对齐
* spaceBetween 将左右两边的间距为0 其他元素之间平分间距
* spaceAround   左右两边的间距是其他元素之间的间距的一半
* spaceEvenly  所有的间距平分空间
*
*
* CrossAxisAlignment 即Y轴
*
* start 交叉轴的起始位置对齐
* end   交叉轴的结束位置对齐
* center 中心点对齐（默认值）
* baseline 基线对齐(必须有文本的时候才起效果)
* stretch 先Row占据交叉抽尽可能大的空间，将所有的子Widget交叉轴的高度，拉伸到最大
*  */


//crossAxisAlignment 交叉轴
//
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
//      textBaseline: TextBaseline.ideographic,

        //设间距
        children: [

          /** Flexible
           * 可通过他只设置第一个
           *
           * 空间分配问题
           *

           * */


//       将剩余的全部空间给我
          Flexible(

          fit: FlexFit.tight,
              child: Container(width: 80, height: 60, color: Colors.red,)
          ),
          Flexible(

              fit: FlexFit.tight,
            child: Container(width: 100, height: 120, color: Colors.green,),
          ),


          Container(width: 50, height: 100, color: Colors.blue,),
          Container(width: 40, height: 150, color: Colors.orange,),
        ],

      ),
      ));
  }
}

