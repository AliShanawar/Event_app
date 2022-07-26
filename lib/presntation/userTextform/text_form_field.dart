import 'package:event_app/resource/color_manager.dart';
import 'package:flutter/material.dart';

class TextformFields extends StatelessWidget {
  TextformFields({required this.hintText, this.icon, this.isColor});

  final String hintText;
  final IconData? icon;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: TextFormField(
        style: TextStyle(color: ColorManager.lightGrey),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          fillColor: isColor == true ? ColorManager.sheetfieldcolor : null,
          filled: true,
          prefixIcon: Icon(
            icon,
            color: ColorManager.lightGrey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: isColor == true
                  ? ColorManager.sheetfieldcolor
                  : ColorManager.borderBackground,
            ),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(12),
            borderSide: BorderSide(
                color: isColor == true
                    ? ColorManager.lightGrey
                    : ColorManager.lightGrey),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: ColorManager.lightGrey),
        ),
      ),
    );
  }
}
