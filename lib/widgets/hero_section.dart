import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile = sizingInformation.isMobile;
        bool isDesktop = sizingInformation.isDesktop;
        return SizedBox(
          width: Get.width,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                      isMobile ? Images.heroImageMobile : Images.heroImage),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: isDesktop ? 40 : 24,
                          bottom: 16.0,
                        ),
                        child: SvgPicture.asset(
                          Images.boltFoodLogo,
                          height: isDesktop ? 64 : 40,
                        ),
                      ),
                      isDesktop
                          ? ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 720),
                              child: Container(
                                margin: const EdgeInsets.only(
                                    top: 22.0, bottom: 28.0),
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
                            )
                          : const SizedBox.shrink(),
                      isDesktop
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: SvgPicture.asset(Images.playStore),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: SvgPicture.asset(Images.appStore),
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
              isDesktop
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'The restaurants and takeaways you love, delivered fast',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.4,
                              color: Palette.black,
                              fontSize: isDesktop ? 34 : 24,
                              fontFamily: Fonts.euclidCircularB,
                              fontWeight: isDesktop ? FontWeight.w700 : null,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 56,
                              width: isMobile ? null : 250,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 24),
                              decoration: BoxDecoration(
                                color: Palette.primary,
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: const Text(
                                'DOWNLOAD NOW',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  letterSpacing: 1.25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
