import 'package:crypto_helper/app/http/app_http_client.dart';
import 'package:crypto_helper/di/di_container.dart';
import 'package:crypto_helper/features/coins/domain/repositories/coin_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../features/coins/data/data_sources/remote/bybit_coin_data_source.dart';
import '../features/coins/data/data_transfer_objects/bybit_dto_coin.dart';
import '../features/coins/data/repositories/bybit_coin_repository.dart';

class DiRepositories {

  final CoinRepository coinRepository;

  DiRepositories._({required this.coinRepository});

  static DiRepositories devRepo(AppHttpClient appHttpClient) {
    return DiRepositories._(
      coinRepository: BybitCoinRepository(
        remoteCoinDataSource: BybitCoinDataSource(
          appHttpClient: appHttpClient,
        ),
      ),

    );
  }

  DiRepositories copyWith({
    CoinRepository? coinRepository,
  }) {
    return DiRepositories._(
      coinRepository: coinRepository ?? this.coinRepository,
    );
  }
}
