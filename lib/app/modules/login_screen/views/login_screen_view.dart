import 'package:flutter/material.dart';
import 'package:gadget/app/modules/dashbord/views/dashbord_view.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xff5956e9),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 10.w),
              child: Row(
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.raleway(
                        fontSize: 30.sp,
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
                    "back",
                    style: GoogleFonts.raleway(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffffffff)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Container(
                width: 100.w,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 30, right: 30),
                  child: ListView(
                    children: [
                      Text("Login",
                          style: GoogleFonts.raleway(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w800,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text("Email",
                            style: GoogleFonts.raleway(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(hintText: "Enter your email"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text("Password",
                            style: GoogleFonts.raleway(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffix: Text(
                            'show',
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff5956e9)),
                          ),
                          hintText: "Enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        // forgotpasswordRcm (1:118)
                        'Forgot password?',
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 1.175,
                          color: Color(0xff5956e9),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            side: BorderSide(
                                                color: Color(0xff5956e9)))),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(314, 60)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xff5956e9)),
                                  ),
                                  onPressed: () {
                                    Get.to(DashbordView());
                                  },
                                  child: Container(
                                    child: Text(
                                      "Login",
                                      style: GoogleFonts.raleway(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 2.3.h,
                              ),
                              Text(
                                'Create account',
                                style: GoogleFonts.raleway(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  height: 1.175,
                                  color: Color(0xff5956e9),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
