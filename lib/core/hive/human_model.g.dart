// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'human_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HumanModelAdapterr extends TypeAdapter<HumanModel> {
  @override
  final int typeId = 1;

  @override
  HumanModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HumanModel(
      name: fields[0] as String?,
      surname: fields[1] as String?,
      age: fields[2] as int?,
      eye: fields[3] as EyeModel?,
      face: fields[4] as FaceModel?,
    );
  }

  @override
  void write(BinaryWriter writer, HumanModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.surname)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.eye)
      ..writeByte(4)
      ..write(obj.face);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HumanModelAdapterr &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
