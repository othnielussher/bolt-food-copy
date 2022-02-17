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
    return InkWell(
      onTap: () {},
      child: MouseRegion(
        onEnter: (event) => setState(() => opacity = 0.9),
        onExit: (event) => setState(() => opacity = 1),
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 50),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: Get.width * 0.25,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        widget.signUpModel.imagePath,
                        height: 400,
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 44,
                        bottom: 26,
                      ),
                      child: Text(
                        widget.signUpModel.label,
                        style: const TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Colors.black54,
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
                right: 16,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.primary,
                  ),
                  child: const Icon(CupertinoIcons.arrow_right,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
