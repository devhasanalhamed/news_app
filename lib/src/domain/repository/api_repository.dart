import '../../utils/resources/data_state.dart';
import '../model/requests/breaking_news_request.dart';
import '../model/response/breaking_news_response.dart';

abstract class ApiRepository {
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  });
}
