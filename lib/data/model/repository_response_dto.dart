import 'package:json_annotation/json_annotation.dart';
import 'repository_dto.dart';

part 'repository_response_dto.g.dart';

@JsonSerializable()
class RepositoryResponseDTO{
  @JsonKey(name: 'total_count')
  final int? totalCount;

  @JsonKey(name: 'incomplete_results')
  final bool? incompleteResults;

  final List<RepositoryDTO>? items;

  RepositoryResponseDTO({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  factory RepositoryResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RepositoryResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryResponseDTOToJson(this);
}