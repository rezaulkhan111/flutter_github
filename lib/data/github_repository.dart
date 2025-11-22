import 'dart:collection';

import 'package:dio/dio.dart';
import 'api/github_api_service.dart';
import 'model/repository_response_dto.dart';

class GitHubRepository {
  late GitHubApiService api;

  GitHubRepository() {
    final dio = Dio();
  api = GitHubApiService(dio);
  }

  Future<RepositoryResponseDTO> searchRepo(Map<String, dynamic> query) {
    return api.searchRepositories(query);
  }
}
