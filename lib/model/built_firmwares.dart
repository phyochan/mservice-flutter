import 'package:isp/model/built_firmware.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'built_firmwares.g.dart';

abstract class BuiltFirmwares implements Built<BuiltFirmwares, BuiltFirmwaresBuilder> {
  @BuiltValueField(wireName: 'data')
  BuiltList<BuiltFirmware> get firmwares;
  int get total;

  BuiltFirmwares._();

  factory BuiltFirmwares([updates(BuiltFirmwaresBuilder b)]) = _$BuiltFirmwares;

  static Serializer<BuiltFirmwares> get serializer => _$builtFirmwaresSerializer;
}