import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:mi_card_flutter/constant.dart';
import 'icon_content.dart';
import 'qr_code.dart';
import 'circle_avatar.dart';

Color scaffoldColourForBackground = Colors.orangeAccent.shade700;
IconData businessLogo = FontAwesomeIcons.lightbulb;
double businessLogoSize = 50.0;
String businessName = "LONDON APP BREWERY";
Color containerColour = Colors.orangeAccent.shade700;
Color boxBorderColour = Colors.white54;
Color boxShadowColour = Colors.orangeAccent;
double containerHeight = 50.0;
String ownerName = "Anonymous";

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: scaffoldColourForBackground,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(
                    businessLogo,
                    size: businessLogoSize,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    businessName,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    child: ScanCode(),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Expanded(
                    child: AvatarCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20.0,
                  bottom: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ownerName,
                      style: kNameTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  InfoCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.phoneSquareAlt,
                      text: "+1 101 110 11",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InfoCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.envelopeOpenText,
                      text: "abcdefg@gmail.com",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InfoCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.laptopCode,
                      text: "Developer of this App",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InfoCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.dollarSign,
                      text: "1_000_00+",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  InfoCard({required this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(
            width: 1.0,
            style: BorderStyle.solid,
            color: boxBorderColour,
          ),
          color: containerColour,
          boxShadow: [
            BoxShadow(
              color: boxShadowColour,
              blurRadius: 8.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: cardChild,
    );
  }
}
