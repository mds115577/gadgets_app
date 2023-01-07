import 'package:get/get.dart';

import '../controllers/gadget_home_controller.dart';

class GadgetHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GadgetHomeController>(
      () => GadgetHomeController(),
    );
  }
}
