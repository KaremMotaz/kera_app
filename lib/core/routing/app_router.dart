import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kera_app/features/Booking/presentation/views/booking_view.dart';
import 'package:kera_app/features/Booking/presentation/views/recently_booked_view.dart';
import 'package:kera_app/features/Splash/splash_view.dart';
import 'package:kera_app/features/app/privacy_policy_view.dart';
import 'package:kera_app/features/app/terms_and_conditions_view.dart';
import 'package:kera_app/features/auth/presentation/views/forgot_password_view.dart';
import 'package:kera_app/features/auth/presentation/views/login_view.dart';
import 'package:kera_app/features/auth/presentation/views/register_view.dart';
import 'package:kera_app/features/auth/presentation/views/welcome_view.dart';
import 'package:kera_app/features/home/presentation/views/book_mark_view.dart';
import 'package:kera_app/features/home/presentation/views/home_view.dart';
import 'package:kera_app/features/home/presentation/views/notification_view.dart';
import 'package:kera_app/features/home/presentation/views/search_view.dart';
import 'package:kera_app/features/main/presentation/views/main_layout.dart';
import 'package:kera_app/features/map/presentation/views/map_view.dart';
import 'package:kera_app/features/onboarding/onboarding_view.dart';
import 'package:kera_app/features/profile/presentation/views/profile_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static CustomTransitionPage buildPageWithSlideTransition<T>({
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
              .animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
              ),
          child: child,
        );
      },
    );
  }

  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: Routes.homeView,
      routes: [
        GoRoute(
          path: Routes.splashView,
          builder: (context, state) => const SplashView(),
        ),

        GoRoute(
          path: Routes.welcomeView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const WelcomeView(),
          ),
        ),
        GoRoute(
          path: Routes.loginView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const LoginView(),
          ),
        ),
        GoRoute(
          path: Routes.registerView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const RegisterView(),
          ),
        ),
        GoRoute(
          path: Routes.onboardingView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const OnboardingView(),
          ),
        ),
        GoRoute(
          path: Routes.termsAndConditionsView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const TermsAndConditionsView(),
          ),
        ),
        GoRoute(
          path: Routes.privacyPolicyView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const PrivacyPolicyView(),
          ),
        ),
        GoRoute(
          path: Routes.forgotPasswordView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const ForgotPasswordView(),
          ),
        ),
        GoRoute(
          path: Routes.mainLayout,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const MainLayout(),
          ),
        ),
        GoRoute(
          path: Routes.homeView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const HomeView(),
          ),
        ),
        GoRoute(
          path: Routes.profileView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const ProfileView(),
          ),
        ),
        GoRoute(
          path: Routes.bookMarkView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const BookMarkView(),
          ),
        ),
        GoRoute(
          path: Routes.notificationView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const NotificationView(),
          ),
        ),
        GoRoute(
          path: Routes.searchView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const SearchView(),
          ),
        ),
        GoRoute(
          path: Routes.recentlyBookedView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const RecentlyBookedView(),
          ),
        ),
        GoRoute(
          path: Routes.bookingView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const BookingView(),
          ),
        ),
        GoRoute(
          path: Routes.mapView,
          pageBuilder: (context, state) => buildPageWithSlideTransition(
            state: state,
            child: const MapView(),
          ),
        ),
      ],
    );
  }
}
