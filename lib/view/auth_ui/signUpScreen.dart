import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

import '../../api/reg/reg.dart';
import '../widget/button_widget.dart';
import '../widget/custom_text_widget.dart';
import '../widget/text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
    required this.phoneC,
    required this.passC,
    required this.nameC,
  });

  final TextEditingController phoneC;
  final TextEditingController passC;
  final TextEditingController nameC;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 30, right: 10, left: 15),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: "Let's Get Started!",
                fs: 25,
                fc: Color(0xff5F5F5F),
                fw: FontWeight.bold,
              ),
              SizedBox(height: 10),
              TextWidget(
                title: "Create an account.",
                fc: Color(0xff5F5F5F),
                fs: 15,
              ),
              SizedBox(height: 40),
              TextWidget(title: "Name"),
              TextFormFieldWidget(
                controller: widget.nameC,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Please Enter Your Name";
                  } else {
                    return null;
                  }
                },
                title: "Your Name",
                keyboard: TextInputType.text,
                isActive: false,
              ),
              SizedBox(height: 20),
              TextWidget(title: "Phone Number"),
              TextFormFieldWidget(
                controller: widget.phoneC,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Please Enter Your Phone Number";
                  } else {
                    return null;
                  }
                },
                title: "Your Phone Number",
                keyboard: TextInputType.number,
                isActive: false,
              ),
              SizedBox(height: 20),
              TextWidget(title: "Password"),
              TextFormFieldWidget(
                supIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  child: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                isActive: _isObscure,
                controller: widget.passC,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Please Enter Your Password";
                  } else {
                    return null;
                  }
                },
                title: "Your Password",
                keyboard: TextInputType.visiblePassword,
              ),

              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  // if (_formKey.currentState!.validate()) {}
                  var a = {
                    "name": widget.nameC.text,
                    "password": widget.passC.text,
                    "phone": widget.phoneC.text,
                  };
                  log("===${jsonEncode(a)}");
                RegController().createAccountFun();
                },
                child: ButtonWidget(bText: 'Register'),
              ),
              SizedBox(height: 20),
              Center(child: TextWidget(title: "or", fs: 20)),
              SizedBox(height: 20),
              ButtonWidget(
                bText: "Sign up with google",
                bc: Color(0xffFDF2E7),
                borderC: Colors.grey,
                bImage: Image(
                  image: AssetImage("assets/image/google_blogo.png"),
                ),
              ),
              SizedBox(height: 10),
              ButtonWidget(
                bText: "Sign up with facebook",
                bc: Color(0xffFDF2E7),
                borderC: Colors.grey,
                bImage: Image(image: AssetImage("assets/image/fb.png")),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(title: "Don’t have an account?"),
                  TextWidget(
                    title: " Login",
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
