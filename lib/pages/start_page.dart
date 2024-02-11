import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/widgets/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash_bg.jpg'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(colors: [Colors.black, Colors.black12]),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black26, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.black12,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        SvgPicture.asset(
                          'assets/images/app_icon.svg',
                          height: 80,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '100k+ Premium Recipe',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                color: Colors.black54,
                                offset: Offset(2, 2),
                              ),
                              Shadow(
                                color: Colors.black54,
                                offset: Offset(-0.5, -0.5),
                              )
                            ],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ////////
                  ///////
                  //////
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          children: [
                            // large Text
                            Text(
                              'Get\nCooking',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                height: 0.9,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            // small text
                            Text(
                              'Simple Way to find Testy Recipe',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                height: 0.9,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                        Button(
                          onPressed: () {},
                          // width: deviceWidth * 0.7,
                          // height: deviceHeight * 0.08,
                          width: 243,
                          height: 54,
                          text: 'Get Started',
                          icon: Icons.arrow_forward,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
