import 'package:go_router/go_router.dart';
import '../../layout/main_layout.dart';
import '../../features/home/home_section.dart';
import '../../features/articles/articles_section.dart';
import '../../features/projects/projects_section.dart';
import '../../features/cv/cv_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeSection(),
        ),
        GoRoute(
          path: '/articles',
          builder: (context, state) => const ArticlesSection(),
        ),
        GoRoute(
          path: '/projects',
          builder: (context, state) => const ProjectsSection(),
        ),
        GoRoute(
          path: '/cv',
          builder: (context, state) => const CvScreen(),
        ),
      ],
    ),
  ],
);
