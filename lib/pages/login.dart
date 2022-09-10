import 'package:belajarflutter/controller/counter.dart';
import 'package:belajarflutter/pages/counter.dart';
import 'package:belajarflutter/pages/posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    print('dicetak');
    final Controller counterC = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(title: Text('Tes')),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("Nama : ${counterC.nama}")),
            Obx(() => Text("Angka : ${counterC.count}")),
            ElevatedButton(
                onPressed: () {
                  counterC.increment();
                },
                child: Text('Tambah')),
            const SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  Get.to(const Post());
                },
                child: Text('Posts')),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(Counter());
                },
                child: Text('Counter'))
          ],
        ),
      ),
    );
  }
}
