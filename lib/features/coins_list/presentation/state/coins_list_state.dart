import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../coins/domain/entities/coin.dart';
part 'coins_list_state.freezed.dart';


@freezed
sealed class CoinsListState with _$CoinsListState {
  const factory CoinsListState.initial() = Initial;
  const factory CoinsListState.loading() = Loading;
  const factory CoinsListState.loaded(List<Coin> coins) = Loaded;
  const factory CoinsListState.empty() = Empty;
  const factory CoinsListState.error(String message) = Error;
}
