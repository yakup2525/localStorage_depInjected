import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'eye_model.g.dart';

@HiveType(
  typeId: 2,
  adapterName: 'EyeModelAdapter',
)
class EyeModel extends HiveObject {
  int? eye;
  Color? eyeColor;

  EyeModel({
    this.eye,
    this.eyeColor,
  });
}
