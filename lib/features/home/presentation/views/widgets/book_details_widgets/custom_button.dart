import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    this.fontSize,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              backgroundColor: backgroundColor),
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(color: textColor, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
