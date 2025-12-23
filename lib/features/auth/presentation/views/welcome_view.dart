import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/core/widgets/app_text_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AppAssets.welcomeImage,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 550,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x3A3A3A00).withAlpha(0), Color(0xff2C2C2C)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 48,
              left: 24,
              right: 24,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "مرحبًا بك في",
                              style: AppStyles.bold48.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              AppAssets.handEmoji,
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                        Text(
                          "كِراء",
                          style: AppStyles.extraBold96.copyWith(
                            color: AppColors.darkGreen,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "أفضل حجز فندقي في هذا القرن لمرافقة \nعطلتك",
                          style: AppStyles.bold18.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 49),
                  AppTextButton(
                    buttonText: "لنبدأ",
                    buttonWidth: double.infinity,
                    borderRadius: 50,
                    onPressed: () {
                      context.pushReplacement(Routes.onboardingView);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
