import 'package:flutter/material.dart';
import '../model/todo.dart';
import 'package:provider/provider.dart';

class TodoProvider extends ChangeNotifier{
  List<Todo>todos=[];
  Addnewtodo(title, description){
    var newtodo=Todo(title: title, description: description);
    todos.add(newtodo);
    notifyListeners();
  }
  Deletetodo(index){
    todos.removeAt(index);
    notifyListeners();
  }
}