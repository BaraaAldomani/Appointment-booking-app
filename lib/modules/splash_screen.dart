import 'dart:async';

import 'package:booking_appiontment_app/modules/doctor_login_screen.dart';
import 'package:booking_appiontment_app/shared/constants/color/app_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => DoctorLoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: thirdColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.medical_services_outlined,
              color: firstColor,
              size: screen.width / 3,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'دكتورنا',
                style: TextStyle(fontSize: screen.width / 7, color: firstColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
