import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: Get.height * 0.05),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Congratulation',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2D2D2D)),
                  ),
                  Text(
                    '.',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width * 0.8,
                child: const Text(
                  'You have been selected. Please move forward.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff625B71),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.15,
              ),
              Center(
                child: Image(
                  image: const AssetImage('assets/images/smile.png'),
                  height: Get.height * 0.15,
                  width: Get.width * 0.4,
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              const Text(
                'Congratulation!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff625B71),
                ),
              ),
              SizedBox(
                height:Get.height * 0.02,
              ),
              SizedBox(
                width: Get.width * 0.7,
                child: const Text(
                  'You are the chosen one 🎇 Follow the path to move forward as a Bytewise member.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff625B71),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              SizedBox(
                width: Get.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2D2D2D),
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ));
  }

}
