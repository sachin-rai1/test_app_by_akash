import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:test_app_by_akash/app/modules/auth_screen/views/auth_screen_view.dart';
import 'package:test_app_by_akash/app/modules/signup_screen/views/signup_screen_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Obx(
      () => controller.isSplashScreenLoading.value == true
          ? SvgPicture.asset(
              "assets/svgs/SplashScreen.svg",
              fit: BoxFit.cover,
              height: h,
            )
          : Stack(
        children: [
          SvgPicture.asset("assets/svgs/SplashScreen.svg", fit: BoxFit.cover, height:h,color: const Color(0XFF42A7AE).withOpacity(0.45),),
          Positioned(
            bottom: h*0.30,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("Neigh",style: TextStyle(color: Colors.white,fontSize: 45),),
                GestureDetector(
                    onTap: ()=>Get.to(()=> const SignupScreenView()),
                    child: const Text("Get Started",style: TextStyle(color: Color(0XFF2C5C54), fontWeight: FontWeight.bold, fontSize: 16),)),
              ],
            ),
          ),

           Align(
            heightFactor: 35,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have an Account ?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                GestureDetector(
                  onTap: ()=>Get.to(()=> AuthScreenView()),
                    child: const Text(" Log In ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF2C5C54), fontSize: 16),)),
              ],
            ),
          ),
        ],
      )
    ));
  }
}
