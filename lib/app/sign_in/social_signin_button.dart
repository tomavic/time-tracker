import 'package:flutterapp/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton(
      {@required String assetName,
      @required String text,
      Color color,
      Color textColor,
      VoidCallback onPressed})
      : assert(text != null),
        assert(assetName != null),
        super(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(assetName),
                Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 15),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(assetName),
                )
              ],
            ),
            color: color,
            height: 50,
            borderRadius: 4,
            onPressed: onPressed);
}
