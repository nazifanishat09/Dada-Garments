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
    return DefaultTabController(length: 2,
      child: Scaffold(appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[350],
            ),
          ),
        const TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.orange,  // underline color
        indicatorWeight: 3,             // underline thickness
        indicatorSize: TabBarIndicatorSize.tab, // text অনুযায়ী underline
        tabs: [
          Tab(text: "Sign In"),
          Tab(text: "Sign Up"),
        ],
      ),
      const Expanded(
        child: TabBarView(
          children: [
            Column(children: [


            ],),
            Center(child: Text("Sign Up Page")),
          ],
        ),
      ),
      ],
    ),

    ));
  }
}
