import 'package:json_annotation/json_annotation.dart';

part 'owner_dto.g.dart';

@JsonSerializable()
class OwnerDTO {
  final String? login;
  final int? id;

  @JsonKey(name: 'node_id')
  final String? nodeId;

  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  final String? type;

  @JsonKey(name: 'site_admin')
  final bool? siteAdmin;

  OwnerDTO({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.type,
    this.siteAdmin,
  });

  factory OwnerDTO.fromJson(Map<String, dynamic> json) =>
      _$OwnerDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerDTOToJson(this);
}
