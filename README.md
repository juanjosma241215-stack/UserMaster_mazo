# 📱 UserMaster

**App base con Clean Architecture — Taller 2 de Flutter**

> Aplicación móvil desarrollada como ejercicio académico para practicar la organización de un proyecto Flutter siguiendo los principios de **Clean Architecture** (capa de presentación), navegación nativa y simulación de flujos asíncronos.

---

## 👨‍🎓 Datos del estudiante

| Campo         | Detalle                                            |
|---------------|-----------------------------------------------------|
| Estudiante    | **Juan José Mazo**                                  |
| Institución   | SENA — Servicio Nacional de Aprendizaje              |
| Programa      | Tecnólogo en Análisis y Desarrollo de Software (ADSO)|
| Proyecto      | Taller 2: Flutter — *UserMaster - App Base con Clean Architecture* |

---

## 📌 Descripción general

**UserMaster** es una aplicación base construida en Flutter que simula el flujo completo de autenticación y navegación de una app real: pantalla de bienvenida (splash), inicio de sesión, registro, recuperación de contraseña y un dashboard con navegación por pestañas.

El proyecto se organiza siguiendo una variante simplificada de **Clean Architecture**, separando la aplicación por *features* (módulos funcionales) y, dentro de cada uno, aislando la **capa de presentación** (páginas y widgets) de la lógica central de la aplicación (tema, rutas). Esto favorece la escalabilidad, el mantenimiento y la reutilización de componentes.

### Características principales

- 🎨 Tema y paleta de colores centralizados.
- 🧭 Navegación nativa de Flutter mediante rutas nombradas.
- 🧩 Widgets reutilizables (`CustomButton`, `CustomTextField`).
- ⏳ Simulación de estados de carga con `Future.delayed`.
- 📋 Validaciones de formularios (login, registro, recuperación).
- 📱 Dashboard con `BottomNavigationBar` (Inicio y Perfil).
- 🔐 Cierre de sesión con limpieza total de la pila de navegación.

---

## 🏗️ Arquitectura del proyecto

```
lib/
├── core/
│   ├── theme/
│   │   └── app_colors.dart         # Paleta de colores global
│   └── routes/
│       └── app_routes.dart         # Rutas nombradas centralizadas
├── features/
│   ├── auth/                       # Feature: Autenticación
│   │   └── presentation/
│   │       ├── pages/
│   │       │   ├── login_page.dart
│   │       │   ├── register_page.dart
│   │       │   └── forgot_password_page.dart
│   │       └── widgets/
│   │           ├── custom_button.dart
│   │           └── custom_text_field.dart
│   ├── dashboard/                  # Feature: Dashboard
│   │   └── presentation/
│   │       └── pages/
│   │           └── dashboard_page.dart
│   ├── profile/                    # Feature: Perfil
│   │   └── presentation/
│   │       └── pages/
│   │           └── profile_page.dart
│   └── splash/                     # Feature: Splash Screen
│       └── presentation/
│           └── pages/
│               └── splash_page.dart
└── main.dart
```

Cada *feature* es independiente y contiene su propia capa de presentación, lo que permite añadir en el futuro capas de dominio y datos sin romper la estructura existente.

---

## 🚀 Instalación y ejecución local

### Requisitos previos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (canal `stable`)
- Un editor como VS Code o Android Studio
- Un emulador, dispositivo físico o navegador (para Flutter Web)

### Pasos

```bash
# 1. Clonar el repositorio
git clone https://github.com/juanjosma241215-stack/usermaster_mazo.git
cd usermaster_mazo

# 2. Instalar dependencias
flutter pub get

# 3. Ejecutar la aplicación
flutter run

# (Opcional) Ejecutar en modo web
flutter run -d chrome
```

### Ejecutar pruebas

```bash
flutter test
```

---

## ☁️ Despliegue automático (CI/CD → GitHub Pages)

El proyecto incluye un flujo de **GitHub Actions** ubicado en [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) que automatiza la compilación y publicación de la versión web de la aplicación.

**¿Cómo funciona?**

1. Cada `push` a la rama `main` dispara el workflow.
2. Se configura el SDK de Flutter en un runner de Ubuntu.
3. Se instalan las dependencias (`flutter pub get`).
4. Se compila la app para web en modo *release* (`flutter build web --release`).
5. El resultado (`build/web`) se publica automáticamente en **GitHub Pages** mediante las acciones oficiales `actions/upload-pages-artifact` y `actions/deploy-pages`.

> Para habilitarlo, en la configuración del repositorio (`Settings → Pages`) selecciona **GitHub Actions** como fuente de despliegue.

Una vez desplegado, la aplicación quedará disponible en:

```
https://juanjosma241215-stack.github.io/usermaster_mazo/
```

---

## 📝 Historial de commits sugerido (Conventional Commits)

```bash
git add lib/core
git commit -m "feat: agregar tema global y sistema de rutas centralizado"

git add lib/features/auth
git commit -m "feat: implementar módulo de autenticación (login, registro y recuperación)"

git add lib/features/dashboard lib/features/profile lib/features/splash
git commit -m "feat: implementar dashboard con navegación por pestañas y splash screen"

git add .github/workflows/deploy.yml
git commit -m "ci: configurar despliegue automático a GitHub Pages"

git add README.md
git commit -m "docs: agregar documentación del proyecto UserMaster"
```

---

## 📄 Licencia

Este proyecto fue desarrollado con fines **académicos** en el marco del programa Tecnólogo en Análisis y Desarrollo de Software del **SENA**. Su uso y distribución quedan sujetos a fines educativos.

---

<div align="center">


Desarrollado con 💙 por **Juan José Mazo** — SENA ADSO

</div>
=======
Desarrollado por **Juan José Mazo** — SENA ADSO

</div>

