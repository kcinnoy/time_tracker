import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.text: 'Enter button text',
    this.color: Colors.white,
    this.textColor: Colors.black,
    this.borderRadius: 2.0,
    this.height: 45.0,
    this.width: 60,
    this.onPressed,
    this.leading,
  });

  final String text;
  final Widget? leading;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double height;
  final double width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading!,
          SizedBox(
            width: 8.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: textColor,
          textStyle: TextStyle(
            fontSize: 15.0,
          ),
          minimumSize: Size(width, height),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      onPressed: () {},
    );
  }
}
