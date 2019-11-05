// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopHot _$TopHotFromJson(Map<String, dynamic> json) {
  return TopHot(
    json['node'] == null
        ? null
        : HotNode.fromJson(json['node'] as Map<String, dynamic>),
    json['member'] == null
        ? null
        : HotMember.fromJson(json['member'] as Map<String, dynamic>),
    json['title'] as String,
    json['url'] as String,
    json['last_reply_by'] as String,
    json['last_touched'] as num,
    json['replies'] as num,
  );
}

Map<String, dynamic> _$TopHotToJson(TopHot instance) => <String, dynamic>{
      'member': instance.member,
      'node': instance.node,
      'title': instance.title,
      'url': instance.url,
      'last_reply_by': instance.lastReplyBy,
      'last_touched': instance.lastTouched,
      'replies': instance.replies,
    };

HotNode _$HotNodeFromJson(Map<String, dynamic> json) {
  return HotNode(
    json['title'] as String,
    json['avatar_normal'] as String,
  );
}

Map<String, dynamic> _$HotNodeToJson(HotNode instance) => <String, dynamic>{
      'avatar_normal': instance.avatarNormal,
      'title': instance.title,
    };

HotMember _$HotMemberFromJson(Map<String, dynamic> json) {
  return HotMember(
    json['username'] as String,
  );
}

Map<String, dynamic> _$HotMemberToJson(HotMember instance) => <String, dynamic>{
      'username': instance.username,
    };
