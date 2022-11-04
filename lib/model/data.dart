import 'package:flutter/material.dart';
class Mydata{
  late String name;
  late String age;
  Mydata({required this.name, required this.age});
  Map toJson()=>{
    'name': name,
    'age': age,
  };
}