import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/constants.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        desktop: (BuildContext context) => desktopContainer(),
        mobile: (BuildContext context) => mobileContainer());
  }
}

Widget desktopContainer() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w! / 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Try free Demo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '— Web, iOs and Android',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 530,
            child: Image.asset(
              illustration1,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget mobileContainer() {
  return Column(
    children: [
      SizedBox(
        width: w! / 1.5,
        height: w! / 1.5,
        child: Image.asset(
          illustration1,
          fit: BoxFit.contain,
        ),
      ),
      Text(
        'Track your \nExpenses to \nSave Money',
        style: TextStyle(
          fontSize: w! / 10,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          // height: 1.2,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        'Helps you to organize your income and expenses',
        style: TextStyle(color: Colors.grey.shade400),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 45,
        child: ElevatedButton.icon(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
            backgroundColor: MaterialStateProperty.all(AppColors.primary),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          label: const Text(
            'Try free Demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        '— Web, iOs and Android',
        style: TextStyle(
          color: Colors.grey.shade400,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
