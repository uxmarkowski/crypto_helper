import 'dart:async';
import 'package:crypto_helper/features/coins/domain/entities/coin.dart';
import 'package:crypto_helper/features/coins/domain/repositories/coin_repository.dart';
import 'package:crypto_helper/features/coins_list/presentation/state/coins_list_state.dart';


class CoinsListViewModel {

  final CoinRepository _coinRepository;
  CoinsListViewModel(this._coinRepository);

  final _stateController = StreamController<CoinsListState>.broadcast();
  Stream<CoinsListState> get state => _stateController.stream;

  void loadCoins() async {
    _stateController.add(CoinsListState.loading());
    List<Coin> coins = await _coinRepository.getAllAvailableCoins();
    // TODO Добавить обработку ошибки
    _stateController.add(CoinsListState.loaded(coins));
  }

  void dispose() {
    _stateController.close();
  }
}
