// ignore_for_file: invalid_annotation_target

import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  static const String hiveKey = 'UserModel';
  @HiveType(typeId: 100, adapterName: 'UserModelAdapter')
  const factory UserModel({
    @HiveField(0) @JsonKey(name: 'given_name') String? firstName,
    @HiveField(1) @JsonKey(name: 'family_name') String? lastName,
    @HiveField(2) String? picture,
    @HiveField(3) required String email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
