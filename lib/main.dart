import 'package:fellowship_app/view/Step2_waiting_screen.dart';
import 'package:fellowship_app/view/congratulation_screen.dart';
import 'package:fellowship_app/view/dont_stop_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fellowship App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  DontStop(),
    );
  }
}
