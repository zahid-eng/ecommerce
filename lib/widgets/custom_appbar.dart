import 'package:flutter/material.dart';
import 'package:my_project/utils/quotes.dart';

class CustomAppbar extends StatelessWidget {
  Function? onTap;
  int? qoutesindex;
  CustomAppbar({this.onTap, this.qoutesindex});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          onTap!();
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              sweetSay[qoutesindex!],
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
