import 'package:flutter/material.dart';
import 'package:gadget/app/modules/login_screen/views/login_screen_view.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5956e9),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                child: Row(
                  children: [
                    Text(
                      "Find your",
                      style: GoogleFonts.raleway(
                          fontSize: 33.sp,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffffffff)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Row(
                  children: [
                    Text(
                      "Gadget",
                      style: GoogleFonts.raleway(
                          fontSize: 33.sp,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffffffff)),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.w,
                height: 40.h,
                child: Image.asset(
                  "assets/images/.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: BorderSide(color: Colors.white))),
                        fixedSize: MaterialStateProperty.all(Size(314, 60)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {
                        Get.to(LoginScreenView());
                      },
                      child: Container(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.raleway(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5956e9),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
