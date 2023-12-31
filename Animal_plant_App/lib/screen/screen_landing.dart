import 'package:aninal_plant/common/custom_appBar.dart';
import 'package:aninal_plant/common/neivigation_button.dart';
import 'package:aninal_plant/main.dart';
import 'package:aninal_plant/utills/Strings.dart';
import 'package:flutter/material.dart';

import '../utills/text_style.dart';

class ScreenLanding extends StatelessWidget {
  const ScreenLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/elephant.jpg",
          height: height,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        Column(
          children: [
            const CustomAppBar(
              opacity: 0.8,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                right: 35,
                left: 35,
                bottom: 20
              ),
              child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: Strings.READY_TEXT,
                          style: TextStyles.bigHeadingTextStyle,
                        ),
                        TextSpan(text: '\n'),
                        TextSpan(
                          text: Strings.READY_TO_WATCH_DESC,
                          style: TextStyles.bodyTextStyle,
                        ),
                         TextSpan(text: '\n'),
                         TextSpan(text: '\n'),
                        TextSpan(
                          text: Strings.START_ENJOYING,
                          style: TextStyles.enjoyTextStyle,
                        ),
                      ]
                      )),
            ),
          ],
        ),
         NeivigtionButton(path:SCREEN_CHOOSE)
      ]),
    );
  }
}
