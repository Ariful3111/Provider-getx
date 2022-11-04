import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider_project/model/data.dart';
import 'package:provider_project/main.dart';
import 'package:provider_project/Routes/route.dart';

class Splash extends StatelessWidget {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _agecontroller = TextEditingController();
  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, secondscreen)),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextField(
                controller: _namecontroller,
              ),
              TextField(
                controller: _agecontroller,
              ),
              ElevatedButton(
                onPressed: () {
                  final name = _namecontroller.text;
                  final age = _agecontroller.text;
                  final box = GetStorage();
                  box.write(
                    'data',
                    Mydata(name: 'name', age: 'age'),
                  );
                  print('added');
                },
                child: Text('Add'),
              ),
              ElevatedButton(
                onPressed: () => _counter + 1,
                child: Obx(
                  () => Text(_counter.string),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
