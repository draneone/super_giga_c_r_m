import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetObjectsCall {
  static Future<ApiCallResponse> call({
    int limit = 10,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetObjects',
      apiUrl: 'http://drane.one/api/objects/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'limit': limit,
      },
      returnBody: true,
    );
  }
}

class GetBanksCall {
  static Future<ApiCallResponse> call({
    int placementsValue,
    String month = '',
    String initialAmount = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET BANKS',
      apiUrl: 'https://drane.one/api/banks/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'placements_value': placementsValue,
        'month': month,
        'initial_amount': initialAmount,
      },
      returnBody: true,
    );
  }
}
