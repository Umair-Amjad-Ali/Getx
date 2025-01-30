import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/utilities/screen_three_controller.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final ScreenThreeController controller = Get.put(ScreenThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 110, 114, 117),
        title: const Text('GetX Theme Mode'),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.changeOpacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
