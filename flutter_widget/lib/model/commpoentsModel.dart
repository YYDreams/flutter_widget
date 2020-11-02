

enum CommpoentModelType{
  CommpoentModelTypeRow,
  CommpoentModelTypeStack,
  CommpoentModelTypeListView,
}


class CommpoentsModel{

  final String title;

  final CommpoentModelType modelType;

  CommpoentsModel({this.title,this.modelType});

}



final List<CommpoentsModel> commpoentsList = [


  CommpoentsModel(title: "Row",modelType: CommpoentModelType.CommpoentModelTypeRow),

  CommpoentsModel(title: "Stack",modelType: CommpoentModelType.CommpoentModelTypeStack),

  CommpoentsModel(title: "ListView",modelType: CommpoentModelType.CommpoentModelTypeListView),


];