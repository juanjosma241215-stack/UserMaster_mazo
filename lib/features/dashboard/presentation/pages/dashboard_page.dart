import 'package:flutter/material.dart';
import 'package:usermaster/core/theme/app_colors.dart';
import 'package:usermaster/features/profile/presentation/pages/profile_page.dart';

/// Pantalla principal con navegación por pestañas (Inicio y Perfil).
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    _HomeTab(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  const _HomeTab();

  static final List<Map<String, dynamic>> _notifications = [
    {
      'title': 'Bienvenido a UserMaster',
      'subtitle': 'Tu sesión se inició correctamente.',
      'icon': Icons.celebration_outlined,
    },
    {
      'title': 'Tarea pendiente',
      'subtitle': 'Completar el taller de Clean Architecture.',
      'icon': Icons.task_alt_outlined,
    },
    {
      'title': 'Actualización disponible',
      'subtitle': 'Hay una nueva versión de la aplicación.',
      'icon': Icons.system_update_alt_outlined,
    },
    {
      'title': 'Recordatorio',
      'subtitle': 'Revisa tu correo institucional del SENA.',
      'icon': Icons.mark_email_unread_outlined,
    },
    {
      'title': 'Seguridad',
      'subtitle': 'Cambia tu contraseña cada 90 días.',
      'icon': Icons.shield_outlined,
    },
    {
      'title': 'Nuevo mensaje',
      'subtitle': 'Tu instructor comentó tu entrega.',
      'icon': Icons.forum_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 4),
          child: Text(
            'Hola, Usuario',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Estas son tus notificaciones recientes',
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            itemCount: _notifications.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final item = _notifications[index];
              return Card(
                elevation: 0,
                color: AppColors.cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                  side: const BorderSide(color: AppColors.border),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.primary.withValues(alpha: 0.1),
                    child: Icon(item['icon'] as IconData, color: AppColors.primary),
                  ),
                  title: Text(
                    item['title'] as String,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(item['subtitle'] as String),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
