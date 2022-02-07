import 'package:flutter/material.dart';
import 'package:portfolio_x/view/const/color.dart';
import 'package:portfolio_x/view/footer.dart';
import 'package:portfolio_x/view/header.dart';
import 'package:portfolio_x/view/middle.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack(
        [
          const HeaderScreen(),
          if (context.isMobile) const IntroductionWidget().p16(),
          const MiddleScreen(),
          const FooterScreen(),
        ],
      ).scrollVertical(),
    );
  }
}
