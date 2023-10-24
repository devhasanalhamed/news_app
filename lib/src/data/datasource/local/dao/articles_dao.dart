import 'package:floor/floor.dart';

import '../../../../domain/model/article.dart';
import '../../../../utils/constants/strings.dart';

@dao
abstract class ArticleDao {
  @Query('SELECT * Form $articlesTableName')
  Future<List<Article>> getAllArticles();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertArticle(Article article);

  @delete
  Future<void> deleteArticle(Article article);
}
