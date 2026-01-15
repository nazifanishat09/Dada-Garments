import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
              indicatorSize: TabBarIndicatorSize.tab, // text onujayi underline
              tabs: [
                Tab(text: "Sign In"),
                Tab(text: "Sign Up"),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, left: 10),
                        child: TextWidget(
                          title: "Welcome Back!",
                          fs: 25,
                          fc: Color(0xff5F5F5F),
                          fw: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextWidget(
                          title: "Please enter your details to login.",
                          fc: Color(0xff5F5F5F),
                          fs: 15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextWidget(title: "Phone Number"),
                      ),
                    ],
                  ),
                  Center(child: Text("Sign Up Page")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
