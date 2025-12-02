import 'package:flutter/material.dart';

BoxShadow get customboxShadow {
  return BoxShadow(
    color: Colors.black.withOpacity(0.05),
    blurRadius: 10,
    offset: const Offset(0, 4),
  );
}
