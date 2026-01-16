import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/custom_text_widget.dart';
import '../widget/text_form_field.dart';




class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
    required this.phoneC,
    required this.passC,
  });

  final TextEditingController phoneC;
  final TextEditingController passC;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10,bottom: 30),
      child: SingleChildScrollView(
        keyboardDismissBehavior:
        ScrollViewKeyboardDismissBehavior.onDrag,

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
              phoneC: phoneC,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "Please Enter Your Phone Number";
                } else {
                  return null;
                }
              },
              title: "Your Phone Number",
            ),
            SizedBox(height: 10),
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
              title: "Your Password",
            ),
            Align(
              alignment: Alignment.centerRight,

              child: TextWidget(
                title: "Forgot Password",
                fc: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            ButtonWidget(bText: 'Log In'),
            Center(child: TextWidget(title: "or", fs: 20)),
            ButtonWidget(
              bText: "Sign in with google",
              bc: Color(0xffFDF2E7),borderC: Colors.grey,
              bImage: Image(
                image: AssetImage(
                  "assets/image/google_blogo.png",
                ),
              ),
            ),
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
                TextWidget(title: "Already have an account ? "),
                TextWidget(title: " Register here",fc: Colors.orange,fw: FontWeight.bold,)
              ],
            )
          ],
        ),
      ),
    );
  }
}