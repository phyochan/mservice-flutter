import 'package:isp/model/built_firmware.dart';
import 'package:isp/model/built_firmwares.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';


part 'serializers.g.dart';

@SerializersFor(const [BuiltFirmware, BuiltFirmwares])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
