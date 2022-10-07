import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_project/widgets/custom_appbar.dart';
import 'package:my_project/widgets/custom_curosel.dart';

class HomeScreen extends StatefulWidget {
  // HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getRandomQuoates();
    super.initState();
  }

  int qindex = 0;
  getRandomQuoates() {
    Random random = Random();
    setState(() {
      qindex = random.nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(children: [
          CustomAppbar(
            qoutesindex: qindex,
            onTap: () {
              getRandomQuoates();
            },
          ),
          CustomCurosel()
        ])),
      ),
    );
  }
}
