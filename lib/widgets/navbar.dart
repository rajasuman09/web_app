import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/utils/styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopNavBar(),
      mobile: (BuildContext context) => mobileNavBar(),
    );
  }
}

Widget mobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: w! / 15),
    height: 70,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Icon(Icons.menu),
      Image.asset(
        logo,
        fit: BoxFit.contain,
        width: 110,
      ),
    ]),
  );
}

Widget desktopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: w! / 15),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 110,
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
          ),
        ),
        Row(children: [
          navButton('About us'),
          navButton('Pricing'),
          navButton('Feedback'),
          navButton('Features'),
        ]),
        ElevatedButton(
          onPressed: () {},
          style: borderedButtonStyle,
          child: Text(
            'Request a Demo',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    ),
  );
}

Widget navButton(String label) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    ),
  );
}
