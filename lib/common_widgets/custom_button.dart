import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.child,
    this.color: Colors.white,
    this.textColor: Colors.black,
    this.borderRadius: 2.0,
    this.height,
    this.width,
    this.onPressed,
  });

  final Widget? child;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: textColor,
          textStyle: TextStyle(
            fontSize: 15.0,
          ),
          minimumSize: Size(width!, height!),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      onPressed: () {},
    );
  }
}
