import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_github/data/github_repository.dart';
import 'package:flutter_github/data/model/repository_response_dto.dart';

class GithubVM extends ChangeNotifier {
  final GitHubRepository repo = GitHubRepository();

  RepositoryResponseDTO? result;
  bool isLoading = false;
  String? error;

  Future<void> search(String query) async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      final params = <String, dynamic>{"q": query, "sort": "stars"};

      // final params2 = <String, dynamic>{};
      // params2["q"] = query;
      // params2["sort"] = "stars";

      final response = await repo.searchRepo(params);

      result = response;
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
