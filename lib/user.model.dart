import 'package:hive/hive.dart';

part 'user.model.g.dart';


@HiveType(typeId: 1)
class UserModel{
  @HiveField(0)
  int id;

  @HiveField(1)
  String first_name;

  @HiveField(2)
  String last_name;

  @HiveField(3)
  DateTime date0fBirth;

  @HiveField(4)
  String gender;

  @HiveField(5)
  String height;

  @HiveField(6)
  String weight;

  UserModel(this.id, this.first_name, this.last_name, this.date0fBirth, this.gender, this.height, this.weight);
}