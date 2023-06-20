import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/form_validator.dart';
import 'login_screen.dart';
import 'dashboard.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FormValidation validation = Get.put(FormValidation());

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  dispose() {
    super.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: height * 0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SignUp',
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
              const Text(
                'Welcome back!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: height * 0.05),
              Center(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            hintText: 'abc@gmail.com',
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          validator: validation.emailValidator,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: firstnameController,
                          decoration: const InputDecoration(
                            hintText: 'Hammad',
                            labelText: 'First Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: validation.nameValidator,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: lastnameController,
                          decoration: const InputDecoration(
                            hintText: 'Ali',
                            labelText: 'Last Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: validation.nameValidator,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: '********',
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          validator: validation.passwordValidator,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: '********',
                            labelText: 'Re-enter Password',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please re-enter password';
                            } else if (value != passwordController.text) {
                              return 'Password does not match';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey,
                      indent: width * 0.06,
                      endIndent: width * 0.05,
                    ),
                  ),
                  const Text(
                    'Or Login with',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey,
                      indent: width * 0.05,
                      endIndent: width * 0.06,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              SizedBox(
                width: width * 0.92,
                child: OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white38,
                    padding: EdgeInsets.symmetric(vertical: height * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Image.asset(
                          'assets/images/googleicon.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      const Text(
                        'Google',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              SizedBox(
                width: width * 0.92,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Get.to(() => const Dashboard());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2D2D2D),
                    padding: EdgeInsets.symmetric(vertical: height * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
              const Text(
                "Already have an account?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginScreen());
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
