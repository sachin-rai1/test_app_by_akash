import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key, this.beforeGradient, this.afterGradient});

  final Widget? beforeGradient;
  final Widget? afterGradient;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: h * 0.45,
            width: w,
            child: beforeGradient,
          ),
          Container(
            height: h*0.5,
            width: w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.blueGrey.shade600],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.repeated)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: afterGradient,
            ),

          ),
        ],
      ),
    );
  }
}
