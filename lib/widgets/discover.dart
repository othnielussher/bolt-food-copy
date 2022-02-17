import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 848),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(Images.phones),
            ConstrainedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
