import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset("assets/svgs/SplashScreen.svg", fit: BoxFit.cover, height:h,color: const Color(0XFF42A7AE),),

          Positioned(
            bottom: h*0.30,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Neigh",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
          ),

          const Align(
            heightFactor: 35,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an Account ?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Text(" Log In ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
          ),
        ],
      )
    );
  }
}
