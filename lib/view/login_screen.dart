import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height= MediaQuery.of(context).size.height;

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: height*0.2),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xff2D2D2D)),),
                    Text('.', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.red),),
                  ],
                ),
                const Text('Welcome back!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
                SizedBox(height: height*0.05,),

                Center(
                  child: Form(
                    child: Column(
                      children: [
                        SizedBox(
                          width: width*0.9,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'abc@gmail.com',
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.03,),
                        SizedBox(
                          width: width*0.9,
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: '********',
                              labelText: 'Password',
                              border: OutlineInputBorder(

                              ),
                            ),
                          ),
                        ),

                      ],
                    )

                  )
                ),

                SizedBox(height: height*0.05,),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey,
                        indent: width*0.06,
                        endIndent: width*0.05,
                      ),
                    ),
                    const Text('Or Login with', style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
                    Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey,
                        indent: width*0.05,
                        endIndent: width*0.06,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height*0.05,),

                SizedBox(
                  width: width*0.92,
                  child: OutlinedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white38,
                      padding: EdgeInsets.symmetric(vertical: height*0.015),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(child: Image.asset('assets/images/googleicon.png', height: 20, width: 20,)),
                        SizedBox(width: width*0.02,),
                         const Text('Google', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.02,),
                SizedBox(
                  width: width*0.92,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2D2D2D),
                      padding: EdgeInsets.symmetric(vertical: height*0.015),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),

                SizedBox(height: height*0.12,),

                const Text("Don't have an account?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){}, child: const Text("Create Now", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),)),


              ],
            ),
          ),
        )
      ),
    );
  }
}
