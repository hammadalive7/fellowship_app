import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepOneWaiting extends StatelessWidget {
  const StepOneWaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: Get.height * 0.06),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Step 1',
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
              'Waiting for approval.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff625B71),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.2,
          ),
          Center(
            child: Image(
              image: const AssetImage('assets/images/waitingSandClock.png'),
              height: Get.height * 0.15,
              width: Get.width * 0.4,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          const Text(
            'Please be patient.',
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
              'The teams is doing their best to finalize the complete list.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff625B71),
              ),
            ),
          ),

        ],
      ),
    ));
  }
}
