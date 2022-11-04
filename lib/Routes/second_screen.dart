import 'package:flutter/material.dart';
import 'package:provider_project/main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider_project/views/splash_screen.dart';

class SecondScreen extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => print(
            box.read('data'),
          ),
        ),
        body: Center(
          child: Text('data${box.read('data')['name']}'),
        ),
      ),
    );
  }
}
