import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/item_view_controller.dart';

class ItemViewView extends GetView<ItemViewController> {
  final ItemViewController _itemViewController = Get.put(ItemViewController());
  @override
  Widget build(BuildContext context) {
    var urlimages = [
      "assets/images/image-20.png",
      "assets/images/image-21.png"
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage("assets/images/Heart.png")))
        ],
        elevation: 0,
        backgroundColor: Color(0xfff2f2f2),
      ),
      backgroundColor: Color(0xfff2f2f2),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: Color(0xfff2f2f2)),
          height: 240,
          child: GetBuilder<ItemViewController>(builder: (cpnmsdf) {
            return CarouselSlider.builder(
              itemCount: urlimages.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  decoration: BoxDecoration(color: Color(0xfff2f2f2)),
                  width: 200,
                  height: 30,
                  child: Image(
                    height: 100,
                    fit: BoxFit.cover,
                    image: AssetImage(urlimages[index]),
                  ),
                );
              },
              options: CarouselOptions(
                height: 280,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  log(index.toString());
                  _itemViewController.changeData(index);
                },
              ),
            );
          }),
        ),
        GetBuilder<ItemViewController>(builder: (constext) {
          return Container(
            decoration: BoxDecoration(color: Color(0xfff2f2f2)),
            child: AnimatedSmoothIndicator(
              activeIndex: _itemViewController.icontroller,
              count: urlimages.length,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.grey,
                activeDotColor: Colors.black,
              ),
            ),
          );
        }),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Container(
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
              child: ListView(
                children: [
                  Text(
                    '2023 Apple Watch 6',
                    style: GoogleFonts.raleway(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Colors',
                    style: GoogleFonts.raleway(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(100, 35)),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: Colors.blue[400],
                          ),
                          label: Text(
                            "Sky Blue",
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.175,
                              color: Color(0xff000000),
                            ),
                          )),
                      ElevatedButton.icon(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                color: Colors.grey,
                              )),
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(110, 35)),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: Colors.orange,
                          ),
                          label: Text(
                            "Sun Orange",
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.175,
                              color: Color(0xff000000),
                            ),
                          )),
                      ElevatedButton.icon(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(100, 35)),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: Colors.green,
                          ),
                          label: Text(
                            "Green",
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.175,
                              color: Color(0xff000000),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Get Apple TV+ free for a year',
                    style: GoogleFonts.raleway(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',
                    style: GoogleFonts.raleway(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.3883593241,
                      letterSpacing: 0.3,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Full description ->',
                    style: GoogleFonts.raleway(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 1.175,
                      color: Color(0xff5956e9),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ))
      ]),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 110,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.raleway(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    // 4am (1:752)
                    '₹ 86,656',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.raleway(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      height: 1.175,
                      color: Color(0xff5956e9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Color(0xff5956e9)))),
                    fixedSize: MaterialStateProperty.all(Size(100.w, 60)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff5956e9)),
                  ),
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      "Add to Cart",
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
