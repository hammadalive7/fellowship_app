import '../utills/otp_textfield.dart';
import '../utills/timer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTP_screen extends StatefulWidget {
  const OTP_screen({super.key});

  @override
  State<OTP_screen> createState() => _OTP_screenState();
}

class _OTP_screenState extends State<OTP_screen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.07, horizontal: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/back.png",
                      height: Get.height * 0.06,
                      width: Get.width * 0.06,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verify",
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
              ),
              const Text(
                "Enter Code which is sent to your email and phone number",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.02),
                child: OtpTextField(
                  length: 6,
                  onCompleted: (String otp) {
                    print('Entered OTP: $otp');
                  },
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Resend available in ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  TimerWidget()
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )),
              Container(
                width: width * 0.92,
                child: ElevatedButton(
                  onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    //   Get.to(() => const Dashboard());
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2D2D2D),
                    padding: EdgeInsets.symmetric(vertical: height * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
