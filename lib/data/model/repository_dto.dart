import 'package:json_annotation/json_annotation.dart';

import 'owner_dto.dart';

part 'repository_dto.g.dart';

@JsonSerializable()
class RepositoryDTO {
  final int? id;

  @JsonKey(name: 'node_id')
  final String? nodeId;

  final String? name;

  @JsonKey(name: 'full_name')
  final String? fullName;

  final OwnerDTO? owner;

  final String? description;
  final bool? fork;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'pushed_at')
  final String? pushedAt;

  final String? language;
  final int? size;

  @JsonKey(name: 'stargazers_count')
  final int? stargazersCount;

  @JsonKey(name: 'watchers_count')
  final int? watchersCount;

  @JsonKey(name: 'forks_count')
  final int? forksCount;

  @JsonKey(name: 'open_issues_count')
  final int? openIssuesCount;

  final int? forks;

  @JsonKey(name: 'open_issues')
  final int? openIssues;

  final int? watchers;
  final double? score;

  @JsonKey(name: 'default_branch')
  final String? defaultBranch;

  int? ownerId;

  RepositoryDTO({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.description,
    this.fork,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.language,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.forksCount,
    this.openIssuesCount,
    this.forks,
    this.openIssues,
    this.watchers,
    this.score,
    this.defaultBranch,
    this.ownerId,
  });

  factory RepositoryDTO.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryDTOToJson(this);
}
