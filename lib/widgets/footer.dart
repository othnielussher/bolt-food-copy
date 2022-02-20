import 'package:bolt_food/shared/exports.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

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
                child: InkWell(
                  onTap: () => html.window.location.reload(),
                  child: SvgPicture.asset(
                    Images.boltFoodLogo,
                    height: isMobile ? 32 : 44,
                  ),
                ),
              ),

              isDesktop
                  ? const SizedBox.shrink()
                  : defaultTargetPlatform == TargetPlatform.iOS
                      ? InkWell(
                          onTap: () => Utils.launchURL(Links.appStore),
                          child: SvgPicture.asset(
                            Images.appStore,
                            height: 44,
                            width: 150,
                          ),
                        )
                      : defaultTargetPlatform == TargetPlatform.android
                          ? InkWell(
                              onTap: () => Utils.launchURL(Links.playStore),
                              child: SvgPicture.asset(
                                Images.playStore,
                                height: 44,
                                width: 150,
                              ),
                            )
                          : Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  flex: isTablet ? 0 : 1,
                                  child: InkWell(
                                    onTap: () =>
                                        Utils.launchURL(Links.playStore),
                                    child: SvgPicture.asset(
                                      Images.playStore,
                                      height: 44,
                                      width: 150,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16, height: 16),
                                Expanded(
                                  flex: isTablet ? 0 : 1,
                                  child: InkWell(
                                    onTap: () =>
                                        Utils.launchURL(Links.appStore),
                                    child: SvgPicture.asset(
                                      Images.appStore,
                                      height: 44,
                                      width: 150,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16, height: 16),
                                Expanded(
                                  flex: isTablet ? 0 : 1,
                                  child: InkWell(
                                    onTap: () =>
                                        Utils.launchURL(Links.huaweiStore),
                                    child: SvgPicture.asset(
                                      Images.huaweiStore,
                                      height: 44,
                                      width: 150,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16, height: 16),
                              ],
                            ),

              isDesktop ? const SizedBox.shrink() : const LanguagePicker(),

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
                        children: [
                          InkWell(
                            onTap: () => Utils.launchURL(Links.couriers),
                            child: const Text(
                              'Courier Sign-up',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () => Utils.launchURL(Links.partners),
                            child: const Text(
                              'Restaurant Sign-up',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () => Utils.launchURL(Links.careers),
                            child: const Text(
                              'Careers',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: isDesktop ? 0 : 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => Utils.launchURL(Links.support),
                            child: const Text(
                              'Support & FAQ',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () => Utils.launchURL(Links.press),
                            child: const Text(
                              'Press',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () => Utils.launchURL(Links.blog),
                            child: const Text(
                              'Blog',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () => Utils.launchURL(Links.contacts),
                            child: const Text(
                              'Contacts',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () => Utils.launchURL(Links.legal),
                            child: const Text(
                              'Legal',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
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
                              InkWell(
                                onTap: () => Utils.launchURL(Links.facebook),
                                child: SvgPicture.asset(
                                  Images.facebookLogo,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              InkWell(
                                onTap: () => Utils.launchURL(Links.instagram),
                                child: SvgPicture.asset(
                                  Images.instagramLogo,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              InkWell(
                                onTap: () => Utils.launchURL(Links.twitter),
                                child: SvgPicture.asset(
                                  Images.twitterLogo,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ],
                          ),
                          isDesktop
                              ? const LanguagePicker()
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: isDesktop ? 40.0 : 32.0),
                child: const MouseRegion(
                  cursor: SystemMouseCursors.text,
                  child: Text(
                    '© 2022 Bolt Technology OÜ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Palette.grey,
                    ),
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
