import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopContainer(),
      mobile: (BuildContext context) => mobileContainer(),
    );
  }

  Widget desktopContainer() {
    return Column(
      children: [
        Container(
          height: 800,
          decoration: BoxDecoration(color: AppColors.primary),
          child: Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  height: 320,
                  width: 320,
                  child: Image.asset(vector1),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  height: 320,
                  width: 320,
                  child: Image.asset(vector2),
                ),
                Positioned(
                  bottom: 0,
                  left: 43,
                  right: 43,
                  child: SizedBox(
                    width: double.infinity,
                    height: 712,
                    child: Image.asset(
                      dashboard,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            companyLogo(fb),
            companyLogo(google),
            companyLogo(cocacola),
            companyLogo(samsung)
          ]),
        )
      ],
    );
  }

  Widget mobileContainer() {
    return Container(
      decoration: BoxDecoration(color: AppColors.primary),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(dashboard), fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ]),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String name) {
    return Container(
      width: 160,
      height: 36,
      margin: const EdgeInsets.only(bottom: 20),
      child: Image.asset(
        name,
        fit: BoxFit.contain,
      ),
    );
  }
}
