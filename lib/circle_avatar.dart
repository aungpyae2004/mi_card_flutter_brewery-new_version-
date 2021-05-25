import 'package:flutter/material.dart';

Color circleBorderColour = Colors.white70;
Color circleAvatarColourForBackground = Colors.white54;

class AvatarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: circleBorderColour,
            width: 1.0,
          )),
      child: CircleAvatar(
        minRadius: 30.0,
        maxRadius: 50.0,
        backgroundImage: AssetImage('assets/images/Avatar.jpg'),
        backgroundColor: circleAvatarColourForBackground,
      ),
    );
  }
}
