import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Util {
  static showAlert({bool error = false, String title = "", required String message, int duration = 3}) {
    Get.snackbar("tituloo", "mensagem",
        titleText: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        messageText: Text(message, style: const TextStyle(color: Colors.white)),
        colorText: Colors.white,
        backgroundColor: error ? Colors.red : Colors.greenAccent,
        animationDuration: const Duration(milliseconds: 200),
        duration: Duration(seconds: duration),
        mainButton: TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "x",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white),
            )));
  }
}
