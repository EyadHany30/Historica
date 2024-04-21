import 'package:go_router/go_router.dart';
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
]);