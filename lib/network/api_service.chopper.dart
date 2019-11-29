// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiService;

  Future<Response<BuiltFirmwares>> getFirmwares(int page) {
    final $url = '/firmware/all';
    final Map<String, dynamic> $params = {'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltFirmwares, BuiltFirmwares>($request);
  }
}
