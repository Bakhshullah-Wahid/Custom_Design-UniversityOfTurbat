import 'package:flutter/material.dart';
import 'package:new_app_bar_design/utils/custom_bottom_bar.dart';

import 'utils/custom_app_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar:  CustomBottomBar(),
        appBar: CustomAppBar(
            // this namePage is for routed page
            namePage: "Home",
            // this projectName is your first name of your App
            projectName: "University",
            // if Necessary you can add your name of your App
            projectSecondName: "of Turbat"),
        body: const Center(
          child: Text('Custom AppBar and BottomBar'),
        ),
      ),
    );
  }
}
