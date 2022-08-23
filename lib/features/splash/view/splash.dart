import 'dart:async';

import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/splash_cubit.dart';

class SplashCreen extends StatefulWidget {
  const SplashCreen({Key? key}) : super(key: key);

  @override
  State<SplashCreen> createState() => _SplashCreenState();
}

class _SplashCreenState extends State<SplashCreen> {
  int count = 3;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cDarkBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 132,
              height: 132,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: AnimatedContainer(
                      width: 132,
                      height: 132,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cOrange.withOpacity(count.toDouble() / 3),
                      ),
                      duration: Duration(milliseconds: 1000),
                    ),
                  ),
                  AnimatedPositioned(
                    left: 35 + count.toDouble() * 10,
                    top: 0,
                    bottom: 0,
                    duration: Duration(milliseconds: 1000),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Ecommerce\nConcept',
                        style: sLargeTitle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Load after \n $count seconds',
              textAlign: TextAlign.center,
              style: sCallout.copyWith(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          count--;
          if (count <= 0) {
            timer.cancel();
            BlocProvider.of<SplashCubit>(context).setInit(true);
          }
        });
      },
    );
  }
}
