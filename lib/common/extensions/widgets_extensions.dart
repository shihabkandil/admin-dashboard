import 'package:flutter/material.dart';

extension SpacingExtensions on num {
  Widget get verticalSpace => SizedBox(height: toDouble());
  Widget get horizontalSpace => SizedBox(width: toDouble());
}

extension PaddingExtensions on Widget {
  Widget paddingAll(num value) {
    return Padding(
      padding: EdgeInsets.all(value.toDouble()),
      child: this,
    );
  }

  Widget paddingHorizontal(num value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value.toDouble()),
      child: this,
    );
  }

  Widget paddingVertical(num value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value.toDouble()),
      child: this,
    );
  }
}
