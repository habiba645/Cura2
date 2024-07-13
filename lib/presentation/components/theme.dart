// presentation/components/theme.dart
import 'package:flutter/material.dart';
Color clr(int colorNum) {
  switch (colorNum) {
    case 1:
      return Color(0xFF0B1C3D); // blue
    case 2:
      return Color(0xFF4682B4); // 
    case 3:
      return Color(0xFF1ABC9C);
    case 4:
      return Color(0xFFECEFF4);
    case 5:
      return Color(0xFFF8F8F8);
    default:
      return Colors.black;
  }
}
