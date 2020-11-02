
import 'package:flutter/material.dart';


class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Row的特点
//  水平方向尽可能占据比较大的控件
//  如果水平方向也是希望包裹内容，那么设置mainAxisSize = min 默认是max


    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),

        /**
         * Stack默认的大小是包裹内容的
         * alignment: 从什么位置开始排布所有的子Widget
         * fit: expand(很少) 将子元素拉伸到尽可能大
         * overflow:超出部分如何处理
         *
         * Positioned
         * 控制子元素的具体位置
         *
         * */
        body:Stack(

//          alignment控制位置
          alignment: AlignmentDirectional.bottomStart,
          children: [

//            double.infinity占据整个宽度
            Container(width: double.infinity,height: 180,color: Colors.green,),
//            Positioned控制位置
            Positioned(
//              bottom: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("我是红红火火",style: TextStyle(fontSize: 20,color: Colors.red),),
                  IconButton(icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ), onPressed: (){
                    print("");
                  })


                ],
              ),
            ),




          ],

    ),
    );
  }
}

