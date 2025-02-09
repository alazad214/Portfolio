
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (
            _,
          ) =>
                  const HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constaints) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              height: screenSize.height / 1,
              alignment: Alignment.center,
              child: Center(
                  child:
                      Lottie.asset("assets/animation/anim.json", height: 100)),
            )
          ],
        )),
      );
    });
  }
}
