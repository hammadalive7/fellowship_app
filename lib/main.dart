import 'package:fellowship_app/view/login_screen.dart';
import 'package:fellowship_app/view/step1_form_screen.dart';
import 'package:fellowship_app/view/step1_waiting_screen.dart';
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
        primarySwatch: Colors.purple,
      ),
      home: const StepOneWaiting(),
    );
  }
}
