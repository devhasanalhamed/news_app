import 'package:auto_route/auto_route.dart';

// import '../../presentation/views/breaking_news_view.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: BreakingNewsView.page, initial: true),
        AutoRoute(page: ArticleDetailsView.page),
        AutoRoute(page: SavedArticlesView.page),
      ];
}

final appRouter = AppRouter();
