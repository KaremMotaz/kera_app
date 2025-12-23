import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/core/widgets/app_text_button.dart';

class LoginWithGoogleButton extends StatelessWidget {
  const LoginWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.googleIcon, width: 20, height: 20),
          const SizedBox(width: 16),
          Text(
            'Continue with Google',
            style: AppStyles.semiBold17.copyWith(color: Colors.black),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
