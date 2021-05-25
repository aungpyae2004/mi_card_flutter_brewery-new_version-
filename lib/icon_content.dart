import 'package:flutter/material.dart';
import 'constant.dart';

Color iconColour = Colors.black;

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColour,
      ),
      title: Text(
        text,
        style: kLabelTextStyle,
      ),
    );
  }
}
