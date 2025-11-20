// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerDTO _$OwnerDTOFromJson(Map<String, dynamic> json) => OwnerDTO(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      type: json['type'] as String?,
      siteAdmin: json['site_admin'] as bool?,
    );

Map<String, dynamic> _$OwnerDTOToJson(OwnerDTO instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
    };
