import 'package:crypto_helper/features/coins/data/data_transfer_objects/bybit_dto_coin.dart';
import 'package:crypto_helper/features/coins/data/mapping/bybit_dto_coin_mapper.dart';

import '../../domain/entities/coin.dart';
import '../../domain/repositories/coin_repository.dart';
import '../data_sources/remote/remote_coin_data_source.dart';

class BybitCoinRepository implements CoinRepository{

  final RemoteCoinDataSource<BybitDtoCoin> _remoteCoinDataSource;

  const BybitCoinRepository({
    required RemoteCoinDataSource<BybitDtoCoin> remoteCoinDataSource,
  }) : _remoteCoinDataSource = remoteCoinDataSource;


  @override
  Future<List<Coin>> getAllAvailableCoins() async{
    final dtoList = await _remoteCoinDataSource.fetchAllAvailableCoins();
    return dtoList.map((dto) => dto.toEntity()).toList();
  }


}