import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_x/view/const/color.dart';
import 'package:portfolio_x/view/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "xubairansari305@gmail.com".text.color(Coolors.accentColor).semiBold.make().box.border(color: Coolors.accentColor).p16.rounded.make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.widthBox,
              "xubairansari305@gmail.com".text.color(Coolors.accentColor).semiBold.make().box.border(color: Coolors.accentColor).p16.rounded.make().onTap(() {})
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        const CustomAppBar().shimmer(
          primaryColor: Coolors.accentColor,
        ),
        10.heightBox,
        "Thanks for scrolling".richText.semiBold.white.withTextSpanChildren(
          [
            " that's all folks.".textSpan.gray500.make(),
          ],
        ).make(),
        10.heightBox,
        [
          "Made in India with".text.red500.make(),
          10.widthBox,
          const FaIcon(
            FontAwesomeIcons.solidHeart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
