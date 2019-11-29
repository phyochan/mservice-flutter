import 'package:isp/model/built_firmware.dart';
import 'package:isp/model/built_firmwares.dart';
import 'package:chopper/chopper.dart';
import 'package:isp/network/built_value_converter.dart';
import 'package:isp/network/interceptors/api_header_interceptor.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ApiService extends ChopperService {


  @Get(path: 'firmware/all')
  Future<Response<BuiltFirmwares>> getFirmwares(@Query() int page);

  @override
  void dispose() {
    print("API Disposed!");
    super.dispose();
  }

  static ApiService create() {
    print("API Service Created!");
    final client = ChopperClient(
        baseUrl: 'http://myanmarservice.org/api',
        services: [
          _$ApiService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          ApiHeaderInterceptor(),
        ]);
    return _$ApiService(client);
  }
}
