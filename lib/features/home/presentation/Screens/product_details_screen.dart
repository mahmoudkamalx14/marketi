import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/custom_appbar.dart';
import 'package:marketi/features/Favorites/presentation/logic/favorite_cubit.dart';
import 'package:marketi/features/Favorites/presentation/logic/favorite_state.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:marketi/features/home/presentation/widgets/product%20details/product_details.dart';
import 'package:marketi/features/home/presentation/widgets/product%20details/product_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});

  final ProductDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteCubit>(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor: const Color(0xFFFFFFFF),
              body: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: const CustomAppBar(
                        title: 'تفاصيل المنتج',
                        image: 'assets/images/Group 5621.png',
                        count: 6,
                      ),
                    ),
                    verticalSpace(20),
                    Expanded(flex: 3, child: ProductImage(model: model)),
                    Expanded(flex: 4, child: ProductDetails(model: model)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
