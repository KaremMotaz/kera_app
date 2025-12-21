import 'package:go_router/go_router.dart';
import 'package:kera_app/features/Splash/splash_view.dart';
import 'package:kera_app/features/app/privacy_policy_view.dart';
import 'package:kera_app/features/app/terms_and_conditions_view.dart';
import 'package:kera_app/features/auth/presentation/views/forgot_password_view.dart';
import 'package:kera_app/features/auth/presentation/views/login_view.dart';
import 'package:kera_app/features/auth/presentation/views/register_view.dart';
import 'package:kera_app/features/home/presentation/views/book_mark_view.dart';
import 'package:kera_app/features/home/presentation/views/home_view.dart';
import 'package:kera_app/features/home/presentation/views/notification_view.dart';
import 'package:kera_app/features/onboarding/onboarding_view.dart';
import 'package:kera_app/features/profile/presentation/views/profile_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: Routes.homeView,
      routes: [
        GoRoute(
          path: Routes.splashView,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: Routes.loginView,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: Routes.registerView,
          builder: (context, state) => const RegisterView(),
        ),
        GoRoute(
          path: Routes.onboardingView,
          builder: (context, state) => const OnboardingView(),
        ),
        GoRoute(
          path: Routes.termsAndConditionsView,
          builder: (context, state) => const TermsAndConditionsView(),
        ),
        GoRoute(
          path: Routes.privacyPolicyView,
          builder: (context, state) => const PrivacyPolicyView(),
        ),
        GoRoute(
          path: Routes.forgotPasswordView,
          builder: (context, state) => const ForgotPasswordView(),
        ),
        GoRoute(
          path: Routes.homeView,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: Routes.profileView,
          builder: (context, state) => const ProfileView(),
        ),
        GoRoute(
          path: Routes.bookMarkView,
          builder: (context, state) => const BookMarkView(),
        ),
        GoRoute(
          path: Routes.notificationView,
          builder: (context, state) => const NotificationView(),
        ),
      ],
    );
  }
}
