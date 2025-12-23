import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/core/routing/routes.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _circleController;
  late AnimationController _logoController;
  late AnimationController _loaderController;

  Animation<double>? _circleScale;
  Animation<double>? _logoFade;
  Animation<double>? _loaderFade;

  @override
  void initState() {
    super.initState();

    _circleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _loaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _setupAnimations();
  }

  void _setupAnimations() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenSize = MediaQuery.of(context).size;

      // Calculate the maximum radius needed to cover the screen
      final maxRadius = sqrt(
        pow(screenSize.width / 2, 2) + pow(screenSize.height / 2, 2),
      );
      final endScale = maxRadius * 2 / 60;

      _circleScale = Tween<double>(begin: 1.0, end: endScale).animate(
        CurvedAnimation(parent: _circleController, curve: Curves.easeInOut),
      );

      _logoFade = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: _logoController, curve: Curves.easeIn));

      _loaderFade = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _loaderController, curve: Curves.easeIn),
      );

      // --- Start the animations ---

      _circleController.forward().whenComplete(() {
        _logoController.forward().whenComplete(() {
          Future.delayed(const Duration(milliseconds: 200), () {
            _loaderController.forward().whenComplete(() {
              Future.delayed(const Duration(seconds: 2), () {
                if (mounted) {
                  context.pushReplacement(Routes.welcomeView);
                }
              });
            });
          });
        });
      });

      setState(() {});
    });
  }

  @override
  void dispose() {
    _circleController.dispose();
    _logoController.dispose();
    _loaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            if (_circleScale != null)
              AnimatedBuilder(
                animation: _circleScale!,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _circleScale!.value,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [AppColors.darkGreen, AppColors.lighterGreen],
                        ),
                      ),
                    ),
                  );
                },
              ),

            Column(
              children: [
                const Spacer(flex: 3),

                if (_logoFade != null)
                  FadeTransition(
                    opacity: _logoFade!,
                    child: Image.asset(
                      AppAssets.logoImage,
                      width: 150,
                      height: 175,
                    ),
                  ),
                const Spacer(flex: 1),

                if (_loaderFade != null)
                  FadeTransition(
                    opacity: _loaderFade!,
                    child: const SpinKitCircle(color: Colors.white, size: 60),
                  ),
                const Spacer(flex: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
