import 'package:get/get.dart';

class ItemViewController extends GetxController {
  //TODO: Implement ItemViewController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  var icontroller = 0;
  changeData(index) {
    icontroller = index;
    update();
  }
}
