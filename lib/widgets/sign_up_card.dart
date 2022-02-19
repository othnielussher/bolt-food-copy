import 'package:bolt_food/exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpCard extends StatefulWidget {
  final SignUpModel signUpModel;
  const SignUpCard({Key? key, required this.signUpModel}) : super(key: key);

  @override
  State<SignUpCard> createState() => _SignUpCardState();
}

class _SignUpCardState extends State<SignUpCard> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile = sizingInformation.isMobile;
        bool isDesktop = sizingInformation.isDesktop;
        return InkWell(
          onTap: () {},
          hoverColor: Colors.transparent,
          child: MouseRegion(
            onExit: (event) => setState(() => opacity = 1),
            onEnter: (event) => setState(() => opacity = 0.9),
            child: AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(milliseconds: 50),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: isDesktop ? Get.width * 0.25 : Get.width,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            widget.signUpModel.imagePath,
                            height: isMobile ? 200 : 400,
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 24, 94, 26),
                          child: Text(
                            widget.signUpModel.label,
                            style: TextStyle(
                              height: 1.3,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: isDesktop ? 30.0 : 24.0,
                              shadows: const [
                                Shadow(
                                  blurRadius: 3.0,
                                  color: Colors.black54,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -28,
                    right: isMobile ? 66 : 16,
                    child: Container(
                      width: isDesktop ? 60.0 : 56.0,
                      height: isDesktop ? 60.0 : 56.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Palette.primary,
                      ),
                      child: const Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
