import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePersonalInfo extends StatelessWidget {
  const ImagePersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 309.w,
      height: 216.h,
      decoration: ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(
            width: 1.50.w,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: const Color(0xFFD9E6FF),
          ),
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/Shapes.png'),
        ),
      ),
      child: const Image(image: AssetImage('assets/images/Pic.png')),
    );
  }
}