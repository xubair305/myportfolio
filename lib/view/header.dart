import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_x/view/const/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameWidget = "Jubair\nAnsari.".text.white.xl6.size(context.isMobile ? 15 : 20).bold.lineHeight(1).make().shimmer();

    return SafeArea(
      child: VxBox(
        child: VStack(
          [
            ZStack(
              [
                const PictureWidget(),
                Row(
                  children: [
                    VStack(
                      [
                        if (context.isMobile) 50.heightBox else 10.heightBox,
                        const CustomAppBar().shimmer(
                          primaryColor: Coolors.accentColor,
                        ),
                        30.heightBox,
                        nameWidget,
                        30.heightBox,
                        VxBox().color(Coolors.accentColor).size(60, 10).make().shimmer(
                              primaryColor: Coolors.accentColor,
                            ),
                        const SocialAccounts(),
                      ],
                    ).pSymmetric(h: context.percentWidth * 10, v: 28),
                    Expanded(
                      child: VxResponsive(
                        fallback: const Offstage(),
                        medium: const IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
                        large: const IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
                      ),
                    )
                  ],
                ).w(context.screenWidth),
              ],
            ),
          ],
        ),
      ).size(context.screenWidth, context.percentHeight * 60).color(Coolors.secondaryColor).make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.code, size: 30, color: Coolors.accentColor);
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      const FaIcon(
        FontAwesomeIcons.facebookF,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.facebook.com/jubair.khan.524");
      }).make(),
      20.widthBox,
      const FaIcon(
        FontAwesomeIcons.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/JubairAnsari13");
      }).make(),
      20.widthBox,
      const FaIcon(
        FontAwesomeIcons.linkedinIn,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/jubair-804046231");
      }).make(),
      20.widthBox,
      const FaIcon(
        FontAwesomeIcons.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://instagram.com/warrior_xbr_18");
      }).make(),
      20.widthBox,
      const FaIcon(
        FontAwesomeIcons.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/xubair305");
      }).make(),
      20.widthBox,
    ].hStack().pSymmetric(v: 12);
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "-Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "@googledevexpert for flutter, firebase, dart & web.\nPublic speaker, Blogger, Enterpreneur."
              .text
              .white
              .xl2
              .maxLines(5)
              .make()
              .w(context.isMobile ? context.screenWidth : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: () {},
          child: "Hire me".text.make(),
          color: Coolors.accentColor,
          hoverColor: Vx.purple700,
        ).h(50)
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
