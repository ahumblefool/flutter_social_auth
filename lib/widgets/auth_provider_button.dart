import 'package:flutter/material.dart';

class AuthProviderButton extends StatelessWidget {

final GestureTapCallback? onPressed;
  // final String? providerName;
  final String? buttonText;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final double? height;

  AuthProviderButton(
      {@required this.onPressed,
      // this.providerName,
      this.buttonColor,
      this.buttonText,
      this.buttonTextColor,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(20.0))),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(height: height),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(15.0)))),
              backgroundColor: MaterialStateProperty.all(buttonColor)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Image.asset(providerName!,
                  // width: 25.0),
              Expanded(
                  child: Text(buttonText!,
                      style: TextStyle(
                          color: buttonTextColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center))
            ],
          ),
        ),
      ),
    );
  }
}