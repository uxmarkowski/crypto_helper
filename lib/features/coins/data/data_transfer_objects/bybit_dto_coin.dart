import 'package:freezed_annotation/freezed_annotation.dart';

part 'bybit_dto_coin.freezed.dart';
part 'bybit_dto_coin.g.dart';

@freezed
class BybitDtoCoin with _$BybitDtoCoin {
  const factory BybitDtoCoin({
    required String symbol,
    required String lastPrice,
    required String indexPrice,
    required String markPrice,
    required String prevPrice24h,
    required String price24hPcnt,
    required String highPrice24h,
    required String lowPrice24h,
    required String prevPrice1h,
    required String openInterest,
    required String openInterestValue,
    required String turnover24h,
    required String volume24h,
    required String fundingRate,
    required String nextFundingTime,
    required String predictedDeliveryPrice,
    required String basisRate,
    required String basis,
    required String deliveryFeeRate,
    required String deliveryTime,
    required String ask1Size,
    required String bid1Price,
    required String ask1Price,
    required String bid1Size,
    required String preOpenPrice,
    required String preQty,
    required String curPreListingPhase,
  }) = _BybitDtoCoin;

  factory BybitDtoCoin.fromJson(Map<String, dynamic> json) =>
      _$BybitDtoCoinFromJson(json);
}
