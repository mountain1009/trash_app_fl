import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home.dart';
import 'settings.dart';

final router = GoRouter(
  initialLocation: Home.path,
  routes: [
    GoRoute(
      path: Home.path,
      pageBuilder: (BuildContext context, GoRouterState? state) =>
          const MaterialPage(
        child: Home(),
      ),
    ),
    GoRoute(
      path: Settings.path,
      pageBuilder: (BuildContext context, GoRouterState? state) =>
          const MaterialPage(
        child: Settings(),
      ),
    ),
    // ここに「GoRouterの追加分」を後で追加
  ],
);
