// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryDTO _$RepositoryDTOFromJson(Map<String, dynamic> json) =>
    RepositoryDTO(
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      owner: json['owner'] == null
          ? null
          : OwnerDTO.fromJson(json['owner'] as Map<String, dynamic>),
      description: json['description'] as String?,
      fork: json['fork'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      pushedAt: json['pushed_at'] as String?,
      language: json['language'] as String?,
      size: (json['size'] as num?)?.toInt(),
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      watchersCount: (json['watchers_count'] as num?)?.toInt(),
      forksCount: (json['forks_count'] as num?)?.toInt(),
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt(),
      forks: (json['forks'] as num?)?.toInt(),
      openIssues: (json['open_issues'] as num?)?.toInt(),
      watchers: (json['watchers'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      defaultBranch: json['default_branch'] as String?,
      ownerId: (json['ownerId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RepositoryDTOToJson(RepositoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'description': instance.description,
      'fork': instance.fork,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pushed_at': instance.pushedAt,
      'language': instance.language,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
      'watchers': instance.watchers,
      'score': instance.score,
      'default_branch': instance.defaultBranch,
      'ownerId': instance.ownerId,
    };
