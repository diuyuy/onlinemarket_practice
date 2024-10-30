import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoppingmall_layout/presentation/pages/HomeScreen.dart';
import 'package:shoppingmall_layout/presentation/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/loginPage',
          name: 'loginPage',
          builder: (context, state) => const LoginPage(),
        )
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
