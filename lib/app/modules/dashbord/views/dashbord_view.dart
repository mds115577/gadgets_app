import 'package:flutter/material.dart';
import 'package:gadget/app/modules/account/views/account_view.dart';
import 'package:gadget/app/modules/cart/views/cart_view.dart';
import 'package:gadget/app/modules/favorite/views/favorite_view.dart';
import 'package:gadget/app/modules/gadget_home/views/gadget_home_view.dart';

import 'package:get/get.dart';

import '../controllers/dashbord_controller.dart';

class DashbordView extends GetView<DashbordController> {
  static ValueNotifier<int> selectedPageIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    final pages = [GadgetHomeView(), FavoriteView(), AccountView(), CartView()];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 228),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: DashbordView.selectedPageIndex,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: BottomNavigationBar(
                selectedItemColor: Color(0xff5956e9),
                backgroundColor: Color(0xfff2f2f2),
                currentIndex: updatedIndex,
                onTap: ((newIndex) {
                  DashbordView.selectedPageIndex.value = newIndex;
                }),
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_outlined), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: '')
                ]),
          );
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageIndex,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return pages[updatedIndex];
        },
      ),
    );
  }
}
