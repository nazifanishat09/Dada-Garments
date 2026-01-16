import 'package:dada_garments/view/auth_ui/signInScreen.dart';
import 'package:dada_garments/view/auth_ui/signUpScreen.dart';
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
                    SignInScreen(phoneC: phoneC, passC: passC),
                    SignUpScreen(phoneC: phoneC, passC: passC),
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



