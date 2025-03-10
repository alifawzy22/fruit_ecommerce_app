import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/features/on_board/presentation/views/widgets/on_board_page_view.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../generated/l10n.dart';

class OnBoardViewBody extends StatefulWidget {
  const OnBoardViewBody({super.key});

  @override
  State<OnBoardViewBody> createState() => _OnBoardViewBodyState();
}

class _OnBoardViewBodyState extends State<OnBoardViewBody> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardPageView(
                pageController: pageController,
              ),
            ),
            SizedBox(height: 64),
            DotsIndicator(
              dotsCount: 2,
              animate: true,
              animationDuration: Duration(milliseconds: 250),
              decorator: DotsDecorator(
                activeColor: AppColor.primaryColor,
                color: currentIndex != 0
                    ? AppColor.primaryColor
                    : AppColor.primaryColor.withValues(alpha: 0.5),
              ),
            ),
            SizedBox(height: 29),
            Visibility(
              visible: currentIndex != 0,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomElevatedButton(
                  text: S.of(context).OnBoardStartButton,
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(height: 43),
          ],
        ),
      ),
    );
  }
}
