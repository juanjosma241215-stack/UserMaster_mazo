import 'package:flutter/material.dart';
import 'package:usermaster/features/splash/presentation/pages/splash_page.dart';
import 'package:usermaster/features/auth/presentation/pages/login_page.dart';
import 'package:usermaster/features/auth/presentation/pages/register_page.dart';
import 'package:usermaster/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:usermaster/features/dashboard/presentation/pages/dashboard_page.dart';

/// Manejo centralizado de rutas nombradas de la aplicación.
class AppRoutes {
  AppRoutes._();

  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot_password';
  static const String dashboard = '/dashboard';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashPage(),
    login: (context) => const LoginPage(),
    register: (context) => const RegisterPage(),
    forgotPassword: (context) => const ForgotPasswordPage(),
    dashboard: (context) => const DashboardPage(),
  };
}
