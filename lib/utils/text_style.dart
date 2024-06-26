import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headingStyle1(
    {required BuildContext context, double? size, Color? color}) {
  return Theme.of(context)
      .textTheme
      .displayLarge!
      .copyWith(fontSize: size, color: color);
}

TextStyle headingStyle2(
    {required BuildContext context, double? size, Color? color}) {
  return Theme.of(context)
      .textTheme
      .displayMedium!
      .copyWith(fontSize: size, color: color);
}

TextStyle bodyStyle1(
    {required BuildContext context, double? size, Color? color}) {
  return Theme.of(context)
      .textTheme
      .bodyLarge!
      .copyWith(fontSize: size, color: color);
}

TextStyle bodyStyle2(
    {required BuildContext context, double? size, Color? color}) {
  return Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(fontSize: size, color: color);
}

TextStyle subStyle1(
    {required BuildContext context, double? size, Color? color}) {
  return Theme.of(context)
      .textTheme
      .titleMedium!
      .copyWith(fontSize: size, color: color);
}

TextStyle subStyle2(
    {required BuildContext context, double? size, Color? color}) {
  return Theme.of(context)
      .textTheme
      .titleSmall!
      .copyWith(fontSize: size, color: color);
}

TextStyle textStyle({double? size, Color? color, FontWeight? weight}) {
  return GoogleFonts.mulish(
    color: color ?? Colors.black87,
    fontSize: size ?? 17.0,
    fontWeight: weight ?? FontWeight.bold,
  );
}
