import 'package:flutter/material.dart';

class WidgetFailureMessage extends StatelessWidget {
  final String errorTitle;
  final String errorSubtitle;

  WidgetFailureMessage({
    this.errorTitle = 'You seem to be offline',
    this.errorSubtitle =
        'Check your wi-fi connection or cellular data \nand try again.',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      errorTitle,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
