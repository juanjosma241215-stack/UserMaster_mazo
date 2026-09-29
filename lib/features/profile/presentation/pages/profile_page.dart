import 'package:flutter/material.dart';
import 'package:usermaster/core/theme/app_colors.dart';
import 'package:usermaster/features/auth/presentation/widgets/custom_button.dart';

/// Pestaña de perfil del usuario dentro del Dashboard.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _handleLogout(BuildContext context) async {
    // Limpia toda la pila de navegación y regresa al login.
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/login',
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 52,
                backgroundColor: AppColors.primary,
                child: Icon(Icons.person, size: 56, color: Colors.white),
              ),
              const SizedBox(height: 16),
              const Text(
                'Juan José Mazo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'juanjose.mazo@sena.edu.co',
                style: TextStyle(color: AppColors.textSecondary),
              ),
              const SizedBox(height: 32),
              _ProfileInfoTile(
                icon: Icons.school_outlined,
                title: 'Programa',
                subtitle: 'Tecnólogo en Análisis y Desarrollo de Software',
              ),
              const SizedBox(height: 12),
              _ProfileInfoTile(
                icon: Icons.badge_outlined,
                title: 'Institución',
                subtitle: 'SENA - Servicio Nacional de Aprendizaje',
              ),
              const SizedBox(height: 32),
              CustomButton(
                text: 'Cerrar sesión',
                backgroundColor: AppColors.error,
                onPressed: () => _handleLogout(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _ProfileInfoTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
