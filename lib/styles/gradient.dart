import 'package:flutter/material.dart';

LinearGradient gradient() {
  return LinearGradient(
    begin: FractionalOffset.topLeft,
    end: FractionalOffset.bottomRight,
    colors: [
      const Color(0xffe4a972).withOpacity(0.6),
      const Color(0xff9941d8).withOpacity(0.6),
    ],
    stops: const [
      0.0,
      1.0,
    ],
  );
}
