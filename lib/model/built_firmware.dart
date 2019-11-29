import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'built_firmware.g.dart';

abstract class BuiltFirmware implements Built<BuiltFirmware, BuiltFirmwareBuilder> {

  int get id;
  String get name;
  String get photo;

  BuiltFirmware._();

  factory BuiltFirmware([updates(BuiltFirmwareBuilder b)]) = _$BuiltFirmware;

  static Serializer<BuiltFirmware> get serializer => _$builtFirmwareSerializer;

}