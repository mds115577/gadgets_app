import 'package:get/get.dart';

import 'package:gadget/app/modules/account/bindings/account_binding.dart';
import 'package:gadget/app/modules/account/views/account_view.dart';
import 'package:gadget/app/modules/cart/bindings/cart_binding.dart';
import 'package:gadget/app/modules/cart/views/cart_view.dart';
import 'package:gadget/app/modules/dashbord/bindings/dashbord_binding.dart';
import 'package:gadget/app/modules/dashbord/views/dashbord_view.dart';
import 'package:gadget/app/modules/favorite/bindings/favorite_binding.dart';
import 'package:gadget/app/modules/favorite/views/favorite_view.dart';
import 'package:gadget/app/modules/gadget_home/bindings/gadget_home_binding.dart';
import 'package:gadget/app/modules/gadget_home/views/gadget_home_view.dart';
import 'package:gadget/app/modules/home/bindings/home_binding.dart';
import 'package:gadget/app/modules/home/views/home_view.dart';
import 'package:gadget/app/modules/item_view/bindings/item_view_binding.dart';
import 'package:gadget/app/modules/item_view/views/item_view_view.dart';
import 'package:gadget/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:gadget/app/modules/login_screen/views/login_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBORD,
      page: () => DashbordView(),
      binding: DashbordBinding(),
    ),
    GetPage(
      name: _Paths.GADGET_HOME,
      page: () => GadgetHomeView(),
      binding: GadgetHomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_VIEW,
      page: () => ItemViewView(),
      binding: ItemViewBinding(),
    ),
  ];
}
