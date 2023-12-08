import 'package:flutter/material.dart';
import 'package:temperature_units/utilities/all_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                AllText.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                AllText.calculator,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),

            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.scale_outlined,
                      size: 50,
                    ),
                    Icon(
                      Icons.linear_scale_outlined,
                      size: 50,
                    ),
                    Icon(
                      Icons.device_thermostat_outlined,
                      size: 50,
                    ),
                  ],
                ),
                const Icon(
                  Icons.analytics_outlined,
                  size: 50,
                ),

              ],
          ),
          SizedBox(
            width: 100,
            child: LinearProgressIndicator(
              backgroundColor: Colors.black12,
              color: Colors.black,
              value: controller.value,
            ),
          ),


        ],
      ),
    );
  }
}
