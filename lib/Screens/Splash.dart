import 'dart:async';

import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:splash/Screens/Homepage.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 35, 252),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/vector.png"),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.contain,
                            ),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/vector2.png"),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 300,
                              child: Image.asset("assets/images/title.png"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 40,
                              width: 180,
                              child: Image.asset("assets/images/subtitle.png"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: ActionSlider.standard(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      ),
                      toggleColor: const Color.fromARGB(255, 49, 35, 252),
                      loadingIcon: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      ),
                      action: (controller) async {
                        controller.loading(); // starts loading animation

                        // Simulate a 3-second delay
                        await Future.delayed(const Duration(seconds: 3));

                        controller.success(); // starts success animation

                        // After the success animation is complete, navigate to the homepage
                        Timer(Duration(seconds: 2), () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => Homepage(),
                            ),
                          );
                        });
                      },
                      child: const Text(
                        'Swipe to get started',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      // many more parameters
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
