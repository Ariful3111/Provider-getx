import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/todo_provider.dart';

import '../Routes/route.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Detail-Screen')),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Column(
            children: [
              Text('todos length:${todos.todos.length}'),
              TextButton(onPressed: ()=>Navigator.pushNamed(context, splashscreen),
                  child: Center(child: Text(('click to show SplashScreen'))),),
            ],
          ),
        ),
      ),
    );
  }
}
