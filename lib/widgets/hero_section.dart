import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(Images.heroImage),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40.0, bottom: 16.0),
                child: SvgPicture.asset(Images.boltFoodLogo),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 720),
                child: Container(
                  margin: const EdgeInsets.only(top: 22.0, bottom: 28.0),
                  child: Text(
                    'The restaurants and takeaways you love, delivered fast',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      color: Palette.black,
                      fontFamily: Fonts.euclidCircularB,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SvgPicture.asset(Images.playStore),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SvgPicture.asset(Images.appStore),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
