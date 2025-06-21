import 'package:booklyapp/core/asset_date.dart';
import 'package:booklyapp/features/presentation/views/views/views_model/home_view.dart';
import 'package:booklyapp/features/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation(); // ✅ مهم جدًا

    navigateToHome();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward(); // ✅ مهم جدًا
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetDate.logo),
        SizedBox(height: 10),
        SlidingText(slideAnimation: slideAnimation),
      ],
    );
  }
}

void navigateToHome() {
  Future.delayed(const Duration(seconds: 2), () {
    Get.to(
      HomeView(),
      transition: Transition.fade,
      duration: const Duration(seconds: 1),
    );
  });
}
