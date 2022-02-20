import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final bool isTablet = sizingInformation.isTablet;
        final bool isMobile = sizingInformation.isMobile;
        final bool isDesktop = sizingInformation.isDesktop;
        return Container(
          margin: EdgeInsets.only(top: isMobile ? 96 : 172),
          color: Palette.footerBackground,
          padding: EdgeInsets.only(
            top: 48,
            left: isDesktop ? 100 : 24,
            right: isDesktop ? 100 : 24,
            bottom: isDesktop ? 104 : 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // bolt food logo
              Padding(
                padding: EdgeInsets.only(bottom: isDesktop ? 44 : 28),
                child: SvgPicture.asset(
                  Images.boltFoodLogo,
                  height: isMobile ? 32 : 44,
                ),
              ),

              isDesktop
                  ? const SizedBox.shrink()
                  : Flex(
                      direction: Axis.horizontal,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: isTablet ? 0 : 1,
                          child: SvgPicture.asset(
                            Images.playStore,
                            height: 44,
                            width: 150,
                          ),
                        ),
                        const SizedBox(width: 16, height: 16),
                        Expanded(
                          flex: isTablet ? 0 : 1,
                          child: SvgPicture.asset(
                            Images.appStore,
                            height: 44,
                            width: 150,
                          ),
                        ),
                        const SizedBox(width: 16, height: 16),
                        Expanded(
                          flex: isTablet ? 0 : 1,
                          child: SvgPicture.asset(
                            Images.huaweiStore,
                            height: 44,
                            width: 150,
                          ),
                        ),
                        const SizedBox(width: 16, height: 16),
                      ],
                    ),

              isDesktop
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Container(
                        width: 208,
                        height: 44,
                        color: Palette.grey,
                      ),
                    ),

              SizedBox(
                width: Get.width,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: isDesktop ? Axis.horizontal : Axis.vertical,
                  children: [
                    isDesktop
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                Images.playStore,
                                height: 44,
                                width: 150,
                              ),
                              const SizedBox(width: 16, height: 16),
                              SvgPicture.asset(
                                Images.appStore,
                                height: 44,
                                width: 150,
                              ),
                              const SizedBox(width: 16, height: 16),
                              SvgPicture.asset(
                                Images.huaweiStore,
                                height: 44,
                                width: 150,
                              ),
                              const SizedBox(width: 16, height: 16),
                            ],
                          )
                        : const SizedBox.shrink(),
                    Container(
                      margin: EdgeInsets.only(top: isDesktop ? 0 : 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Courier Sign-up',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Restaurant Sign-up',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Careers',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: isDesktop ? 0 : 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Support & FAQ', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 20.0),
                          Text('Press', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 20.0),
                          Text('Blog', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 20.0),
                          Text('Contacts', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 20.0),
                          Text('Legal', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: isDesktop ? 0 : 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(Images.facebookLogo,
                                  width: 40, height: 40),
                              const SizedBox(width: 16.0),
                              SvgPicture.asset(Images.instagramLogo,
                                  width: 40, height: 40),
                              const SizedBox(width: 16.0),
                              SvgPicture.asset(Images.twitterLogo,
                                  width: 40, height: 40),
                            ],
                          ),
                          isDesktop
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: Container(
                                    width: 208,
                                    height: 44,
                                    color: Palette.grey,
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: isDesktop ? 40.0 : 32.0),
                child: const Text(
                  '© 2022 Bolt Technology OÜ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Palette.grey,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
