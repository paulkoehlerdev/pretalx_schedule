import 'package:flutter/material.dart';

extension ColorExtension on Color {
  static Color fromHex(String hexstring) {
    final buffer = StringBuffer();
    if (hexstring.length == 6 || hexstring.length == 7) buffer.write('ff');
    buffer.write(hexstring.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
