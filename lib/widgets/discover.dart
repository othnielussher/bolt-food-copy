import 'package:bolt_food/shared/exports.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isDesktop = sizingInformation.isDesktop;
        return Padding(
          padding: EdgeInsets.only(top: isDesktop ? 160 : 104),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 848),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.asset(Images.phones),
                    isDesktop
                        ? ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 488),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 64, left: 20),
                              child: Text(
                                'Discover, order, and track in the app',
                                style: TextStyle(
                                  fontSize: 48,
                                  color: Palette.black,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                isDesktop
                    ? const SizedBox.shrink()
                    : const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48),
                        child: Text(
                          'Discover, order, and track in the app',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 24,
                            color: Palette.black,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
