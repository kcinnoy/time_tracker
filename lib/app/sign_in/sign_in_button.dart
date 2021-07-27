import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_button.dart';

class SignInButton extends CustomButton {
  SignInButton(
      {String? text,
      Color color: Colors.white,
      Color textColor: Colors.black87,
      VoidCallback? onPressed,
      double borderRadius: 4.0,
      double height: 50,
      double width: 50})
      : super(
          child: Text(text!), //add text here
          color: color,
          textColor: textColor,
          borderRadius: borderRadius,
          onPressed: onPressed!,
          height: height,
          width: width,
        );
}
