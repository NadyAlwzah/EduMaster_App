import 'package:edumaster/core/utils/assets.dart';
import 'package:edumaster/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          width: 250,
          height: 250,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Styles.textStyleLogo42Bold,
            children: [
              TextSpan(
                text: "EDU",
                style: TextStyle(
                  color: isDark
                      ? Color(0xffd7c4b2) // لون Edu في الوضع الداكن
                      : Color(0xffc8b8a6), // لون Edu في الوضع العادي
                ),
              ),
              TextSpan(
                text: "MASTER",
                style: TextStyle(
                  color: isDark
                      ? Color(0xffa38f7d) // لون Master في الوضع الداكن
                      : Color(0xff998779), // لون Master في الوضع العادي
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
