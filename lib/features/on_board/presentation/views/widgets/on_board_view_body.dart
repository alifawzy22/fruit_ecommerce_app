import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/features/on_board/presentation/views/widgets/on_board_page_view.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/services/shared_preferences_singelton.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../auth/presentation/views/login_view.dart';

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
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: OnBoardPageView(
                pageController: pageController,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 64)),
            SliverToBoxAdapter(
              child: DotsIndicator(
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
            ),
            SliverToBoxAdapter(child: SizedBox(height: 29)),
            SliverToBoxAdapter(
              child: Visibility(
                visible: currentIndex != 0,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CustomElevatedButton(
                    text: S.of(context).OnBoardStartButton,
                    onTap: () async {
                      await Prefs.setBool(kIsOnBoardViewed, true);

                      Navigator.pushReplacementNamed(
                        // ignore: use_build_context_synchronously
                        context,
                        LoginView.routeName,
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 43)),
          ],
        ),
      ),
    );
  }
}
