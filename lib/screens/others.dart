import 'package:app/controllers/counterController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Others extends StatelessWidget {
  final CounterController _counterController = Get.find();
  // Others({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() =>
              Text("Screen was clicked ${_counterController.counter} times")),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Open other screen"))
        ],
      ),
    );
  }
}
