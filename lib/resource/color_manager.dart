// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ColorManager {
  static Color black = HexColor.fromHex("#000000");
  static Color darkBlue = HexColor.fromHex("#195DE3");
  static Color shadeBlue2 = HexColor.fromHex("#182152");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color lightGrey = HexColor.fromHex("#C5C5C5");
  static Color purple = HexColor.fromHex("#8146CD");
  static Color yellow = HexColor.fromHex("#FFE81A");
  static Color background = HexColor.fromHex("#03091F");
  static Color mucis = HexColor.fromHex("#848484");
  static Color gradient = HexColor.fromHex('#195DE3');
  static Color datecolor = HexColor.fromHex('#312773');
  static Color deepPurple = HexColor.fromHex('#312773');
  static Color borderBackground = HexColor.fromHex('#484747');
  static Color sheetfieldcolor = HexColor.fromHex('#03091f');
  static Color circlecolor = HexColor.fromHex('#312773');
  static Color circlecolor2 = HexColor.fromHex('#D9D9D9');
  static Color location = HexColor.fromHex('#DFE1E2');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
