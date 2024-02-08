import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/widgets/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_bg.jpg'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(colors: [Colors.black, Colors.black12])),
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.black12, // replace with gradient

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/app_icon.svg',
                      height: 55,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    const Text('100k+ Premium Recipe'),
                  ],
                ),
                ////////
                ///////
                //////
                Column(
                  children: [
                    // large Text
                    Text('Get Cooking'),
                    // small text
                    Text('Simple Way to find Testy Recipe'),
                    SizedBox(
                      height: 4,
                    ),

                    Button(
                      onPressed: () {},
                      // width: deviceWidth * 0.7,
                      // height: deviceHeight * 0.08,
                      width: 243,
                      height: 54,
                      text: 'Get Started',
                      icon: Icons.skip_next_outlined,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
