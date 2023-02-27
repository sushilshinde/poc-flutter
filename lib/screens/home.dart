import 'package:app/controllers/counterController.dart';
import 'package:app/screens/others.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  // HomeScreen({super.key});

  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text('Clicks: ${counterController.counter}')),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(Others());
                },
                child: const Text("Open other screen")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: const Icon(Icons.add)),
    );
  }
}
