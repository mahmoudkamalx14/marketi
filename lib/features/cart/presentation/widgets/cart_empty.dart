import 'package:flutter/material.dart';
import 'package:marketi/core/routes/extentions.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/custom_appbar.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Cart',
            ),
            verticalSpace(57),
            Image.asset('assets/images/Illustration_Cart_Empty.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Text(
                'Your Cart is Empty',
                style: AppStyles.style24Medium,
              ),
            ),
            Text(
              'Check our big offers, fresh products\nand fill your cart with items',
              textAlign: TextAlign.center,
              style: AppStyles.style16Medium,
            ),
            verticalSpace(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: AppTextButton(
                textButton: 'Start Shopping',
                onPressed: () {
                  context.navigateToReplacement(Routes.navBarLayout);
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
