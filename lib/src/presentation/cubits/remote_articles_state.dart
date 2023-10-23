part of 'remote_articles_cubit.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<Article> articles;
  final bool noMoreData;
  final DioException? exception;
  const RemoteArticlesState({
    this.articles  = const [],
    this.noMoreData = false,
    this.exception,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [articles, noMoreData, exception];
}

final class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesSuccess extends RemoteArticlesState {
  const RemoteArticlesSuccess({super.articles, super.noMoreData});
}

class RemoteArticlesFailed extends RemoteArticlesState {
  const RemoteArticlesFailed({super.exception});
}