import 'package:get/get.dart';

class ScreenThreeController extends GetxController {
  RxDouble opacity = .3.obs;

  changeOpacity(double value) {
    opacity.value = value;
  }
}
