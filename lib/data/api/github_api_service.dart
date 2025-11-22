import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/repository_response_dto.dart';

part 'github_api_service.g.dart';

@RestApi(baseUrl: "https://api.github.com/")
abstract class GitHubApiService {
  factory GitHubApiService(Dio dio, {String baseUrl}) = _GitHubApiService;

  @GET("search/repositories")
  Future<RepositoryResponseDTO> searchRepositories(
    @Queries() Map<String, dynamic> query,
  );
}
