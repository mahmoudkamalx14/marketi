import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BannerShimmerLoading extends StatelessWidget {
  const BannerShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 200.h,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        color: Colors.white,
      ),
    );
  }
}
