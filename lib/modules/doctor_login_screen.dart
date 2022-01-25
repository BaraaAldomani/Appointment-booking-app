import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/constants/color/app_color.dart';

class DoctorLoginScreen extends StatelessWidget {
  const DoctorLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: firstColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: MyDivider(),
              child: Container(
                child: Center(
                    child: Text(
                  'سجل دخول كـ طبيب',
                  style:
                      TextStyle(color: thirdColor, fontSize: screen.width / 11),
                )),
                color: secondColor,
                height: screen.height / 6,
                width: screen.width,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  ':البريد الإلكتروني',
                  style:
                      TextStyle(fontSize: screen.width / 15, color: thirdColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDivider extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
