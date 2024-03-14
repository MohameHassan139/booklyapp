import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({
    super.key,
    required this.beckGroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
  });
  final Color beckGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: beckGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
      ),
    );
  }
}
