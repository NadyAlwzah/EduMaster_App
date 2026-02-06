import 'package:edumaster/core/theme/app_colors.dart';
import 'package:edumaster/core/utils/styles.dart';
import 'package:flutter/material.dart';

class EduMasterLogoText extends StatelessWidget {
  const EduMasterLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Styles.textStyleLogo42Bold,
        children: [
          TextSpan(
            text: "EDU",
            style: TextStyle(
              color: isDark ? AppColors.eduDark : AppColors.eduLight,
            ),
          ),
          TextSpan(
            text: "MASTER",
            style: TextStyle(
              color: isDark ? AppColors.masterDark : AppColors.masterLight,
            ),
          ),
        ],
      ),
    );
  }
}
