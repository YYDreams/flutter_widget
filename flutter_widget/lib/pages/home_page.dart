import 'package:flutter/material.dart';
import 'package:flutter_widget/model/commpoentsModel.dart';
import 'row_widget.dart';
import 'Stack_widget.dart';
import 'ListView_widget.dart';
import 'GridView_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: commpoentsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
          itemBuilder: _itemBuilder),
    );
  }

  Widget _tapAction(BuildContext context, CommpoentModelType modelType) {

    if (modelType == CommpoentModelType.CommpoentModelTypeRow) {

      Navigator.push(context, MaterialPageRoute(builder: (context) => RowPage()));

    } else if (modelType == CommpoentModelType.CommpoentModelTypeStack) {

      Navigator.push(context, MaterialPageRoute(builder: (context) => StackPage()));

    } else if (modelType == CommpoentModelType.CommpoentModelTypeListView) {

      Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewPage()));

    }else if (modelType == CommpoentModelType.CommpoentModelTypeGridView) {

      Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewPage()));
    }
  }

  Widget _itemBuilder(BuildContext context, index) {
    return GestureDetector(
      onTap: () {
        print(commpoentsList[index].modelType);

        _tapAction(context, commpoentsList[index].modelType);
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orange,
        child: Text(
          commpoentsList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
