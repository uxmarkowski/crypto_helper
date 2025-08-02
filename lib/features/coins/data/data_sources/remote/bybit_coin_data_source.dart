import 'package:crypto_helper/app/http/app_http_client.dart';
import 'package:crypto_helper/features/coins/data/data_sources/remote/remote_coin_data_source.dart';

import '../../data_transfer_objects/bybit_dto_coin.dart';


class BybitCoinDataSource implements RemoteCoinDataSource<BybitDtoCoin> {
  final AppHttpClient _appHttpClient;

  BybitCoinDataSource({required AppHttpClient appHttpClient}) : _appHttpClient=appHttpClient;

  @override
  Future<List<BybitDtoCoin>> fetchAllAvailableCoins() async {
    try {
      final response = await _appHttpClient.get(
        '/v5/market/tickers',
        queryParameters: {
          'category': 'linear',
        },
      );

      final data = response.data;

      if (data['result'] == null || data['result']['list'] == null) {
        return [];
      }

      final List list = data['result']['list'];

      return list
          .map((json) => BybitDtoCoin.fromJson(json))
          .toList();
    } catch (e) {
      // TODO обработка
      // Обработай или пробрось ошибку
      rethrow;
    }
  }

}
