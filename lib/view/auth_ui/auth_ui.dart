import 'package:dada_garments/view/auth_ui/signInPage.dart';
import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:dada_garments/view/widget/text_form_field.dart';
import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/custom_appbar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController phoneC = TextEditingController();

  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: GestureDetector(
        onTap: () {
          FocusScopeNode nishat = FocusScope.of(context);
          if (!nishat.hasPrimaryFocus) {
            nishat.unfocus();
          }
        },
        child: Scaffold(
          appBar: CustomAppBar(),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                height: 4,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[350]),
              ),

              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange, // underline color
                indicatorWeight: 3, // underline thickness
                indicatorSize:
                    TabBarIndicatorSize.tab, // text onujayi underline
                tabs: [
                  Tab(text: "Sign In"),
                  Tab(text: "Sign Up"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SingleChildScrollView(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,

                        child: SignInPage(phoneC: phoneC, passC: passC),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: TextWidget(
                              title: "Let’s Get Started!",
                              fs: 25,
                              fc: Color(0xff5F5F5F),
                              fw: FontWeight.bold,
                            ),
                          ),
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
                            title: "Your Phone Number",
                          ),
                          SizedBox(height: 25),
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
                          SizedBox(height: 25),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


