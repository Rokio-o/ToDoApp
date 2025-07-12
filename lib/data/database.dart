import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('myBox');

  // method that runs in the first time ever opening the to do app
  void createInitialData() {
    toDoList = [
      ["Make a List", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // updatae the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
