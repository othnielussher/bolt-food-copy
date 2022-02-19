import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class SignUpSection extends StatelessWidget {
  const SignUpSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      
      builder: (context, sizingInformation) {
        bool isDesktop = sizingInformation.isDesktop;
        return Container(
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 128),
          alignment: Alignment.center,
          child: Wrap(
            spacing: isDesktop ?  56 : 72,
            direction: isDesktop ? Axis.horizontal : Axis.vertical,
            children: List.generate(
              items.length,
              (index) {
                return SignUpCard(signUpModel: items[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
