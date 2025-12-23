import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/core/widgets/app_text_button.dart';

class LoginWithFacebookButton extends StatelessWidget {
  const LoginWithFacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.facebookIcon,
            width: 20,
            height: 20,
            colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
          ),
          const SizedBox(width: 16),
          Text(
            'Continue with Facebook',
            style: AppStyles.semiBold17.copyWith(color: Colors.black),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
