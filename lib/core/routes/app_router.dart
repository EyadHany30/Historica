import 'package:go_router/go_router.dart';
import 'package:historica/features/auth/persentation/views/sign_in.dart';
import 'package:historica/features/auth/persentation/views/sign_up.dart';
import 'package:historica/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:historica/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => const SignInView(),
  ),
]);
