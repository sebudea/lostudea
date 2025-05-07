import 'package:go_router/go_router.dart';
import 'package:lostudea/ui/views/lobby/lobby_screen.dart';

GoRouter router() {
  return GoRouter(
    initialLocation: "/",
    routes: [
      // Ruta principal
      GoRoute(
        path: "/",
        builder: (context, state) => const LobbyScreen(),
      ),
    ],
  );
}
