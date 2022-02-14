import 'package:freezed_annotation/freezed_annotation.dart';
import 'job_model.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
@freezed
class User with _$User {
  const User._();

  const factory User({
    required String name,
    int? age,
    required List<Job> jobs,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String forFun() => '$name $age $jobs';
}
