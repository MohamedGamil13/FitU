// ignore_for_file: camel_case_extensions

import 'package:flutter/material.dart';

extension contextExt on BuildContext {
  bool get isdarkMode {
    return Theme.brightnessOf(this) == Brightness.dark;
  }
}
