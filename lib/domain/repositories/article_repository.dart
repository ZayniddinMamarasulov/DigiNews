import 'package:news_app/domain/entities/article_entity.dart';

abstract class ArticleRepository {
  Future<List<ArticleEntity>> getArticles();

/*  Future<List<ArticleEntity>> getAll({bool fromLocal});

  Future<ArticleEntity> create(ArticleEntity articleEntity);

  Future<ArticleEntity> update(ArticleEntity articleEntity);

  Future<void> delete(String id);*/
}
