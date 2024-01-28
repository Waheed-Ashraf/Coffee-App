import 'package:coffee/featuers/HomeView/view/home_view.dart';
import 'package:coffee/featuers/Intro/view/intro_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home_view';
  static const kShopCartView = '/shopCartView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const IntroView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
