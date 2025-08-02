import '../../../domain/entities/coin.dart';

abstract class RemoteCoinDataSource<T> {

  Future<List<T>> fetchAllAvailableCoins();

}
