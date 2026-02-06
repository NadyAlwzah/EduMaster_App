import 'package:edumaster/core/utils/assets.dart';
import 'package:edumaster/features/splash/presentation/views/widgets/edu_master_logo_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          width: 250,
          height: 250,
        ),
        const EduMasterLogoText(),
      ],
    );
  }
}
