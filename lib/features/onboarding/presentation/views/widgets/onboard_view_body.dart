import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/features/onboarding/presentation/views/widgets/page_view1_body.dart';
import 'package:fitu/features/onboarding/presentation/views/widgets/page_view2_body.dart';
import 'package:fitu/features/onboarding/presentation/views/widgets/page_view3_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardViewBody extends StatefulWidget {
  const OnboardViewBody({super.key});

  @override
  State<OnboardViewBody> createState() => _OnboardViewBodyState();
}

class _OnboardViewBodyState extends State<OnboardViewBody> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Widget> pageViewList = [
    const PageView1Body(),
    const PageView2(),
    const PageView3(),
  ];
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pageViewList.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
                  child: pageViewList[index],
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          AnimatedSmoothIndicator(
            activeIndex: _currentIndex,
            count: pageViewList.length,
            effect: const SlideEffect(
              spacing: 8.0,
              radius: 4.0,
              dotWidth: 8.0,
              dotHeight: 9.0,
              paintStyle: PaintingStyle.fill,
              dotColor: AppColors.gray10,
              activeDotColor: AppColors.primaryColor,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                getNextPageView(context);
              },
              child: Text(
                _currentIndex == pageViewList.length - 1
                    ? "Get Started"
                    : "Next",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getNextPageView(BuildContext context) {
    if (_currentIndex < pageViewList.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go(AppRoutes.registerView);
    }
  }
}
