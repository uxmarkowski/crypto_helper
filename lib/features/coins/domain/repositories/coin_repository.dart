import '../entities/coin.dart';

abstract class CoinRepository {

  Future<List<Coin>> getAllAvailableCoins();

}