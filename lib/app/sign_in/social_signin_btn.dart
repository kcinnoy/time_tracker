import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_button.dart';

class SocialSignInButton extends CustomButton {
  SocialSignInButton({
    Widget? leading,
    String text: 'enter button text',
    Color color: Colors.white,
    Color textColor: Colors.black87,
    VoidCallback? onPressed,
    double borderRadius: 4.0,
    //double height: 50,
    //double width: 50
  }) : super(
          leading: leading,
          text: text,
          color: color,
          textColor: textColor,
          onPressed: onPressed,
        );
}
