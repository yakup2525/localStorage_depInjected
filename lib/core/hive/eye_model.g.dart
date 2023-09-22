// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eye_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EyeModelAdapter extends TypeAdapter<EyeModel> {
  @override
  final int typeId = 2;

  @override
  EyeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EyeModel();
  }

  @override
  void write(BinaryWriter writer, EyeModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EyeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
