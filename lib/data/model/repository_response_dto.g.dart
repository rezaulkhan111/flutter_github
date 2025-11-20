// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryResponseDTO _$RepositoryResponseDTOFromJson(
        Map<String, dynamic> json) =>
    RepositoryResponseDTO(
      totalCount: (json['total_count'] as num?)?.toInt(),
      incompleteResults: json['incomplete_results'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => RepositoryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepositoryResponseDTOToJson(
        RepositoryResponseDTO instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
