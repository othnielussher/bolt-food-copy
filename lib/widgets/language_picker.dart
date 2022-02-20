// import 'package:bolt_food/shared/exports.dart';
import 'package:bolt_food/shared/exports.dart';
import 'package:flutter/material.dart';

class LanguagePicker extends StatelessWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final bool isMobile = sizingInformation.isMobile;
        final bool isTablet = sizingInformation.isTablet;
        return Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: SizedBox(
            width: isMobile
                ? double.infinity
                : isTablet
                    ? 320
                    : 208,
            child: TextFormField(
              readOnly: true,
              initialValue: 'English',
              decoration: InputDecoration(
                suffixIcon: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 6,
                    maxHeight: 10,
                  ),
                  child: SvgPicture.asset(
                    Images.angleUpDown,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                label: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(129, 131, 145, 1),
                    ),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 4, 112, 201),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide:
                      BorderSide(color: Color.fromRGBO(211, 212, 220, 1)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
