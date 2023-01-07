import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Color(0xfff2f2f2),
        title: Text(
          'Cart',
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 1.175,
            color: Color(0xff000000),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                height: 20,
                child: Image(
                  image: AssetImage("assets/images/iconly-light-delete.png"),
                  fit: BoxFit.fitHeight,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // infouEh (1:147)

                padding: EdgeInsets.fromLTRB(14.5, 10, 10, 9),

                decoration: BoxDecoration(
                  color: Color(0xffd3f1ff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlylightnotificationAwK (1:150)
                      margin: EdgeInsets.fromLTRB(0, 0, 6.5, 0),

                      height: 20,
                      child: Image.asset(
                        "assets/images/iconly-light-notification.png",
                        width: 17,
                        height: 20,
                      ),
                    ),
                    Container(
                      // deliveryforfreeuntiltheendofth (1:149)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child: Text(
                        'Delivery for FREE until the end of the month',
                        style: GoogleFonts.raleway(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          height: 1.175,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              height: 160,
              width: 350,
              child: Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/image-20.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2023 Apple Watch 6',
                            style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.175,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '₹ 86,656',
                            style: GoogleFonts.raleway(
                                color: Color(0xff5956e9),
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Quantity',
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175,
                                  letterSpacing: 0.52,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 171, 226),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    '-',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xfff4f4f7),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 171, 226),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    '+',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xfff4f4f7),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          Container(
              height: 160,
              width: 350,
              child: Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/image-19-bg.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'APPLE AirPods Pro -\n White',
                            style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.175,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '₹ 45,556',
                            style: GoogleFonts.raleway(
                                color: Color(0xff5956e9),
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Quantity',
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175,
                                  letterSpacing: 0.52,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 171, 226),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    '-',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xfff4f4f7),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 171, 226),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    '+',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575,
                                      color: Color(0xfff4f4f7),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 130,
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
                height: 30,
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
                      "Checkout",
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
