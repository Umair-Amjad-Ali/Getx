import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/utilities/counter_controller.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 110, 114, 117),
        title: const Text('GetX Theme Mode'),
      ),
      body: Center(
        child: Obx(() => Text('Counter Value: ${controller.counter.value}')),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.increment();
      }),
    );
  }
}
