import 'package:fellowship_app/constants/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

class StepOneForm extends StatelessWidget {
  const StepOneForm({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController rePasswordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final FormValidation validation = Get.put(FormValidation());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.06),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                width: width * 0.8,
                child: const Text(
                  'In the following you’ll be submitting you form according to requirement.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff625B71),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formKey,
                child: SizedBox(
                  width: width * 0.96,
                  child: Column(
                    children: [
                      ListTile(
                        trailing:
                            const Icon(Icons.check_box, color: Colors.black),
                        title: const Text('List Item'),
                        subtitle: const Text(
                            'Supporting line text lorem ipsum dolor sit amet'),
                        onTap: () {},
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            return validation.emailValidator(value);
                          },
                          decoration: const InputDecoration(
                            hintText: 'abc@gmail.com',
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: lastNameController,
                          validator: (value) {
                            return validation.nameValidator(value);
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'xyz',
                            labelText: 'Last Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      ListTile(
                        trailing:
                            const Icon(Icons.check_box, color: Colors.black),
                        title: const Text('List Item'),
                        subtitle: const Text(
                            'Supporting line text lorem ipsum dolor sit amet'),
                        onTap: () {},
                      ),
                      SizedBox(height: height * 0.02),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            return validation.passwordValidator(value);
                          },
                          decoration: const InputDecoration(
                            hintText: '********',
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      SizedBox(
                        width: width * 0.9,
                        child: TextFormField(
                          controller: rePasswordController,
                          validator: (value) {
                            return validation.passwordValidator(value);
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: '********',
                            labelText: 'Re-enter Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
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
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.015),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
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
