// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:news_app/src/domain/model/article.dart' as _i6;
import 'package:news_app/src/presentation/views/article_details_view.dart'
    as _i1;
import 'package:news_app/src/presentation/views/breaking_news_view.dart' as _i2;
import 'package:news_app/src/presentation/views/saved_articles_view.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ArticleDetailsView.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailsViewArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ArticleDetailsView(
          key: args.key,
          article: args.article,
        ),
      );
    },
    BreakingNewsView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BreakingNewsView(),
      );
    },
    SavedArticlesView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SavedArticlesView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ArticleDetailsView]
class ArticleDetailsView extends _i4.PageRouteInfo<ArticleDetailsViewArgs> {
  ArticleDetailsView({
    _i5.Key? key,
    required _i6.Article article,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ArticleDetailsView.name,
          args: ArticleDetailsViewArgs(
            key: key,
            article: article,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleDetailsView';

  static const _i4.PageInfo<ArticleDetailsViewArgs> page =
      _i4.PageInfo<ArticleDetailsViewArgs>(name);
}

class ArticleDetailsViewArgs {
  const ArticleDetailsViewArgs({
    this.key,
    required this.article,
  });

  final _i5.Key? key;

  final _i6.Article article;

  @override
  String toString() {
    return 'ArticleDetailsViewArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [_i2.BreakingNewsView]
class BreakingNewsView extends _i4.PageRouteInfo<void> {
  const BreakingNewsView({List<_i4.PageRouteInfo>? children})
      : super(
          BreakingNewsView.name,
          initialChildren: children,
        );

  static const String name = 'BreakingNewsView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SavedArticlesView]
class SavedArticlesView extends _i4.PageRouteInfo<void> {
  const SavedArticlesView({List<_i4.PageRouteInfo>? children})
      : super(
          SavedArticlesView.name,
          initialChildren: children,
        );

  static const String name = 'SavedArticlesView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
