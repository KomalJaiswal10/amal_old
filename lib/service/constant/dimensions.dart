import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  Dimensions._();

  static double width = MediaQuery.of(Get.context!).size.width;
  static double height = MediaQuery.of(Get.context!).size.height;
}
