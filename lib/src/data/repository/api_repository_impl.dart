import '../../domain/model/requests/breaking_news_request.dart';
import '../../domain/model/response/breaking_news_response.dart';
import '../../domain/repository/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../datasource/remote/base/base_api_repository.dart';
import '../datasource/remote/news_api_service.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final NewsApiService _newsApiService;
  ApiRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles(
      {required BreakingNewsRequest request}) {
    return getStateOf<BreakingNewsResponse>(
      request: () => _newsApiService.getBreakingNewsArticles(
        apiKey: request.apiKey,
        country: request.country,
        category: request.category,
        page: request.page,
        pageSize: request.pageSize,
      ),
    );
  }
}
