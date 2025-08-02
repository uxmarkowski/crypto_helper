import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin.freezed.dart';
part 'coin.g.dart';

@freezed
class Coin with _$Coin {
  const factory Coin({
    required String symbol,
    required double lastPrice,
    required double indexPrice,
    required double markPrice,
    required double prevPrice24h,
    required double price24hPcnt,
    required double highPrice24h,
    required double lowPrice24h,
    required double prevPrice1h,
    required double openInterest,
    required double openInterestValue,
    required double turnover24h,
    required int volume24h,
    required double fundingRate,
    required DateTime nextFundingTime,
    required double predictedDeliveryPrice,
    required String basisRate,
    required String basis,
    required String deliveryFeeRate,
    required String deliveryTime,
    required int ask1Size,
    required double bid1Price,
    required double ask1Price,
    required int bid1Size,
    required String preOpenPrice,
    required String preQty,
    required String curPreListingPhase,
  }) = _Coin;

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);
}
