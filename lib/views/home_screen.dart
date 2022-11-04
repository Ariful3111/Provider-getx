import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/views/detail_screen.dart';
import 'package:provider_project/main.dart';
import 'package:provider_project/model/todo.dart';
import 'package:provider_project/provider/todo_provider.dart';


class Home extends StatelessWidget {
  TextEditingController _titlecontrollr = TextEditingController();
  TextEditingController _descriptiocontrollr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('todos length')),
          actions: [
            IconButton(
              onPressed: () => Get.to(Details()),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Add new todo'),
                      content: Column(
                        children: [
                          TextField(
                            controller: _titlecontrollr,
                            decoration: InputDecoration(hintText: 'title'),
                          ),
                          TextField(
                            controller: _descriptiocontrollr,
                            decoration:
                                InputDecoration(hintText: 'description'),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                final title = _titlecontrollr.text;
                                final description = _descriptiocontrollr.text;
                                todos.Addnewtodo(title, description);
                                Navigator.pop(context);
                              },
                              child: Text('Add'),
                          ),
                        ],
                      ),
                    ),
            );
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: todos.todos.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(todos.todos[index].title),
                subtitle: Text(todos.todos[index].description),
                trailing: IconButton(
                  onPressed: () => todos.Deletetodo(index),
                  icon: Icon(Icons.remove_circle),
                ),
              );
            }),
      ),
    );
  }
}
