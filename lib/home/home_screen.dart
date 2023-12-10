import 'package:flutter/material.dart';
import 'package:web_app/home/containers/Container1.dart';
import 'package:web_app/home/containers/Container2.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              SizedBox(
                height: 30,
              ),
              Container2()
            ],
          ),
        ),
      ),
    );
  }
}
