import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.5);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    _controller.forward();
    Future.delayed(const Duration(milliseconds: 2200)).then((value) async {
      AutoRouter.of(context).replaceAll(
          [const HomePageRoute()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ScaleTransition(
                    scale: _animation,
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        Image.asset(
                          "assets/logo.png",
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                        ),
                        Container(
                          height: 20,
                        ),
                        const Text(
                          "Home Guard",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("Your trusted vehicle partner", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.grey),),
                        )
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 32, right: 32, left: 32),
                //   child: Text("Powered by TeamTriangle", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: AppColors.ON_PRIMARY_COLOR),),
                // )
              ],
            ),
          ),
        ));
  }
}
