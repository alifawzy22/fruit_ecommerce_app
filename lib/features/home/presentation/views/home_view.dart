import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/utils/localization/localization_cubit.dart';
import '../../../../core/utils/services/service_locator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'Home View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          serviceLocator<LocalizationCubit>().toggleLanguage();
        },
        child: Icon(
          Icons.language,
        ),
      ),
    );
  }
}
