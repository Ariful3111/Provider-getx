import 'package:flutter/material.dart';
import 'package:provider_project/Routes/second_screen.dart';
import 'package:provider_project/main.dart';
import 'package:get/get.dart';
import 'package:provider_project/views/home_screen.dart';
import 'package:provider_project/views/splash_screen.dart';

const String homescreen = "/homescreen";
const String splashscreen = "/splashscreen";
const String secondscreen = "/secondscreen";

// control our route flow

List<GetPage> getpages = [
  GetPage(
    name: homescreen,
    page:()=> Home(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: splashscreen,
    page:()=> Splash(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: secondscreen,
    page:()=> SecondScreen(),
    transition: Transition.leftToRight,
  ),
];

