import 'package:flutter/material.dart';


class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
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
    );
  }
}