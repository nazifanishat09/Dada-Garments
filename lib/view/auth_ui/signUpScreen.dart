import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/custom_text_widget.dart';
import '../widget/text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
    required this.phoneC,
    required this.passC,
  });

  final TextEditingController phoneC;
  final TextEditingController passC;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 30,right: 10,left: 15),
      child: SingleChildScrollView(
        keyboardDismissBehavior:
        ScrollViewKeyboardDismissBehavior.onDrag,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              title: "Let's Get Started!",
              fs: 25,
              fc: Color(0xff5F5F5F),
              fw: FontWeight.bold,
            ),
            SizedBox(height:10),
            TextWidget(
              title: "Create an account.",
              fc: Color(0xff5F5F5F),
              fs: 15,
            ),
            SizedBox(height: 40),
            TextWidget(title: "Name"),
            TextFormFieldWidget(
              phoneC: phoneC,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "Please Enter Your Name";
                } else {
                  return null;
                }
              },
              title: "Your Name", keyboard: TextInputType.text,
            ),
            SizedBox(height: 20),
            TextWidget(title: "Phone Number"),
            TextFormFieldWidget(
              phoneC: phoneC,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "Please Enter Your Phone Number";
                } else {
                  return null;
                }
              },
              title: "Your Phone Number", keyboard: TextInputType.number,
            ),
            SizedBox(height:20),
            TextWidget(title: "Password"),
            TextFormFieldWidget(
              supIcon: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                ), //:Icon(Icons.visibility,color: Colors.grey,),
              ),
              isActive: true,
              phoneC: passC,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "Please Enter Your Password";
                } else {
                  return null;
                }
              },
              title: "Your Password", keyboard: TextInputType.visiblePassword,
            ),

            SizedBox(height: 30),
            ButtonWidget(bText: ' Register'),
            SizedBox(height: 20),
            Center(child: TextWidget(title: "or", fs: 20)),
            SizedBox(height: 20),
            ButtonWidget(
              bText: "Sign in with google",
              bc: Color(0xffFDF2E7),borderC: Colors.grey,
              bImage: Image(
                image: AssetImage(
                  "assets/image/google_blogo.png",
                ),
              ),
            ),
            SizedBox(height:10),
            ButtonWidget(
              bText: "Sign in with facebook",
              bc: Color(0xffFDF2E7),borderC: Colors.grey,
              bImage: Image(
                image: AssetImage(
                  "assets/image/fb.png",
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(title: "Don’t have an account?"),
                TextWidget(title: " Login",fc: Colors.orange,fw: FontWeight.bold,)
              ],
            )

          ],
        ),
      ),
    );
  }
}