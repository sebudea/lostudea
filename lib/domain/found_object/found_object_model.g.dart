// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'found_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoundObjectModelImpl _$$FoundObjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FoundObjectModelImpl(
      idObject: json['idObject'] as String,
      idFinder: json['idFinder'] as String,
      gmailFinder: json['gmailFinder'] as String,
      what: json['what'] as String,
      where: json['where'] as String,
      when: DateTime.parse(json['when'] as String),
    );

Map<String, dynamic> _$$FoundObjectModelImplToJson(
        _$FoundObjectModelImpl instance) =>
    <String, dynamic>{
      'idObject': instance.idObject,
      'idFinder': instance.idFinder,
      'gmailFinder': instance.gmailFinder,
      'what': instance.what,
      'where': instance.where,
      'when': instance.when.toIso8601String(),
    };
