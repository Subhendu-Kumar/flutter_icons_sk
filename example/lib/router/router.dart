import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:example/icons/icons.dart';
import 'package:go_router/go_router.dart';
import 'package:example/icons/icon_data_i.dart';
import 'package:example/presentation/view/home.dart';
import 'package:example/presentation/view/content.dart';

List<GoRoute> _buildIconRoutes(List<IconDataI> icons) {
  return [
    // Home route first
    GoRoute(path: '/', builder: (context, state) => const Home()),
    // Other routes mapped from icons
    ...icons.map(
      (icon) => GoRoute(
        path: icon.route,
        builder: (context, state) => Content(iconData: icon),
      ),
    ),
  ];
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Layout(child: child);
      },
      routes: _buildIconRoutes(icons),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            'Page not found: ${state.uri.toString()}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.go('/'),
            child: const Text('Go to Home'),
          ),
        ],
      ),
    ),
  ),
);
