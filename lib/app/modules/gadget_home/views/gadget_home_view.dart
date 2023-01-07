import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../item_view/views/item_view_view.dart';
import '../controllers/gadget_home_controller.dart';

class GadgetHomeView extends GetView<GadgetHomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Color(0xfff2f2f2),
          body: Padding(
            padding: EdgeInsets.only(top: 30.0, left: 30, right: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          // vector3Xw (1:160)
                          margin: EdgeInsets.fromLTRB(0, 0, 26.4, 3.33),
                          width: 22,
                          height: 14.67,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/vector.png',
                              width: 22,
                              height: 14.67,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 3.0, horizontal: 10),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Search ',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Order online\ncollect in store',
                          style: GoogleFonts.raleway(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.175,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelStyle: GoogleFonts.raleway(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      height: 2.175),
                  labelColor: Color(0xff5956e9),
                  indicatorColor: Color(0xff5956e9),
                  tabs: [
                    Tab(
                      child: Text(
                        'Wearable',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Laptops',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Phones',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Drones',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar view widget
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25.h,
                                  width: 40.w,
                                  child: Card(
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: InkWell(
                                              onTap: () {
                                                Get.to(ItemViewView());
                                              },
                                              child: Image.asset(
                                                  "assets/images/image-20.png"),
                                            ),
                                          ),
                                          Text(
                                            'Apple Watch',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              height: 1.0133592818,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Series 6 . Orange',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.175,
                                              color: Color(0xff858585),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '₹ 86,656',
                                                  style: GoogleFonts.raleway(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.175,
                                                    color: Color(0xff5956e9),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.add_box_outlined,
                                                        color:
                                                            Color(0xff5956e9)))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25.h,
                                  width: 40.w,
                                  child: Card(
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: Image.asset(
                                                "assets/images/image-22.png"),
                                          ),
                                          Text(
                                            'Apple Watch',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              height: 1.0133592818,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Series 5 . Rose',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.175,
                                              color: Color(0xff858585),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '₹ 86,656',
                                                  style: GoogleFonts.raleway(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.175,
                                                    color: Color(0xff5956e9),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.add_box_outlined,
                                                        color:
                                                            Color(0xff5956e9)))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25.h,
                                  width: 40.w,
                                  child: Card(
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: Image.asset(
                                                "assets/images/image-23.png"),
                                          ),
                                          Text(
                                            'Noise Fit',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              height: 1.0133592818,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Pro RD5. Grey',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.175,
                                              color: Color(0xff858585),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '₹ 24,847',
                                                  style: GoogleFonts.raleway(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.175,
                                                    color: Color(0xff5956e9),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.add_box_outlined,
                                                        color:
                                                            Color(0xff5956e9)))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25.h,
                                  width: 40.w,
                                  child: Card(
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: Image.asset(
                                                "assets/images/yxpyav8l-1-6JV.png"),
                                          ),
                                          Text(
                                            'Galaxy Watch',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              height: 1.0133592818,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Active . Green',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.raleway(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.175,
                                              color: Color(0xff858585),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '₹ 56,234',
                                                  style: GoogleFonts.raleway(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.175,
                                                    color: Color(0xff5956e9),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.add_box_outlined,
                                                        color:
                                                            Color(0xff5956e9)))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                      // second tab bar viiew widget
                      Column(
                        children: [],
                      ),

                      Column(
                        children: [],
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
