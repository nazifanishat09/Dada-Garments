import 'dart:developer';

import 'package:dada_garments/get_x/counter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/button_widget.dart';
import '../widget/custom_text_widget.dart';
import '../widget/text_form_field.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key, required this.phoneC, required this.passC});

  final TextEditingController phoneC;
  final TextEditingController passC;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {





  @override
  Widget build(BuildContext context) {
    LogInController controller = Get.put(LogInController());
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: TextWidget(
                  title: "Welcome Back!",
                  fs: 25,
                  fc: Color(0xff5F5F5F),
                  fw: FontWeight.bold,
                ),
              ),
              TextWidget(
                title: "Please enter your details to login.",
                fc: Color(0xff5F5F5F),
                fs: 15,
              ),
              SizedBox(height: 20),
              TextWidget(title: "Phone Number"),
              TextFormFieldWidget(
                phoneC: widget.phoneC,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Please Enter Your Phone Number";
                  } else {
                    return null;
                  }
                },
                title: "Your Phone Number", keyboard: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextWidget(title: "Password"),
             Obx(()=> TextFormFieldWidget(isActive: controller.isActive.value,
               supIcon: InkWell(
                 onTap: () {controller.isActive.value = !controller.isActive.value; },
                 child: Icon(controller.isActive.value == true ?
                 Icons.visibility_off :  Icons.visibility,color: Colors.grey,),
               ),
               // isActive: isActive,
               phoneC: widget.passC,
               validator: (v) {
                 if (v == null || v.isEmpty) {
                   return "Please Enter Your Password";
                 } else {
                   return null;
                 }
               },
               title: "Your Password", keyboard: TextInputType.visiblePassword,
             )),
              Align(
                alignment: Alignment.centerRight,

                child: TextWidget(title: "Forgot Password", fc: Colors.orange),
              ),
              SizedBox(height: 20),

              ButtonWidget(
                bText: 'Log In',
                ontep: () {
                 // if (controller.formKey.currentState!.validate()) {}
                },
              ),

              SizedBox(height: 5),
              Center(child: TextWidget(title: "or", fs: 20)),
              SizedBox(height: 5),
              ButtonWidget(
                bText: "Sign in with google",
                bc: Color(0xffFDF2E7),
                borderC: Colors.grey,
                bImage: Image(
                  image: AssetImage("assets/image/google_blogo.png"),
                ),
              ),
              ButtonWidget(
                bText: "Sign in with facebook",
                bc: Color(0xffFDF2E7),
                borderC: Colors.grey,
                bImage: Image(image: AssetImage("assets/image/fb.png")),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(title: "Already have an account ? "),
                  TextWidget(
                    title: " Register here",
                    fc: Colors.orange,
                    fw: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
