import 'package:dexian/features/characters/wire.dart';
import 'package:dexian/features/home/home.dart';
import 'package:dexian/features/home/menu.dart';
import 'package:dexian/features/characters/simpsons.dart';
import 'package:go_router/go_router.dart';

/// Class to handle [GoRouter] app routes
class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/menu', builder: (context, state) => const Menu()),
      GoRoute(path: '/simpsons', builder: (context, state) => SimpsonsPage()),
      GoRoute(path: '/wire', builder: (context, state) => WirePage()),
    ],
  );
}
