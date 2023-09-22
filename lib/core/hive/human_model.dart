import 'package:hive/hive.dart';

import '/core/core.dart';

part 'human_model.g.dart';

@HiveType(
  typeId: 1,
  adapterName: 'HumanModelAdapterr',
)
class HumanModel extends HiveObject {
  @HiveField(0)
  String? name;

  @HiveField(1)
  String? surname;

  @HiveField(2)
  int? age;

  @HiveField(3)
  EyeModel? eye;

  @HiveField(4)
  FaceModel? face;

  HumanModel({this.name, this.surname, this.age, this.eye, this.face});
}
