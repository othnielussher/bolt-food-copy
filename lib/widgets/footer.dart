import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 172),
      color: Palette.footerBackground,
      padding: const EdgeInsets.only(
        top: 48,
        bottom: 104,
        left: 100,
        right: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 44.0),
            child: SvgPicture.asset(Images.boltFoodLogo, height: 44),
          ),
          SizedBox(
            width: Get.width,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(Images.playStore, height: 44, width: 150),
                    const SizedBox(height: 18.0),
                    SvgPicture.asset(Images.appStore, height: 44, width: 150),
                    const SizedBox(height: 18.0),
                    SvgPicture.asset(Images.huaweiStore,
                        height: 44, width: 150),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Courier Sign-up',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Restaurant Sign-up',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Careers',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
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
                Column(
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
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Container(
                        width: 208,
                        height: 44,
                        color: Palette.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
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
  }
}
