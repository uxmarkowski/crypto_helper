// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinImpl _$$CoinImplFromJson(Map<String, dynamic> json) => _$CoinImpl(
  symbol: json['symbol'] as String,
  lastPrice: (json['lastPrice'] as num).toDouble(),
  indexPrice: (json['indexPrice'] as num).toDouble(),
  markPrice: (json['markPrice'] as num).toDouble(),
  prevPrice24h: (json['prevPrice24h'] as num).toDouble(),
  price24hPcnt: (json['price24hPcnt'] as num).toDouble(),
  highPrice24h: (json['highPrice24h'] as num).toDouble(),
  lowPrice24h: (json['lowPrice24h'] as num).toDouble(),
  prevPrice1h: (json['prevPrice1h'] as num).toDouble(),
  openInterest: (json['openInterest'] as num).toDouble(),
  openInterestValue: (json['openInterestValue'] as num).toDouble(),
  turnover24h: (json['turnover24h'] as num).toDouble(),
  volume24h: (json['volume24h'] as num).toInt(),
  fundingRate: (json['fundingRate'] as num).toDouble(),
  nextFundingTime: DateTime.parse(json['nextFundingTime'] as String),
  predictedDeliveryPrice: (json['predictedDeliveryPrice'] as num).toDouble(),
  basisRate: json['basisRate'] as String,
  basis: json['basis'] as String,
  deliveryFeeRate: json['deliveryFeeRate'] as String,
  deliveryTime: json['deliveryTime'] as String,
  ask1Size: (json['ask1Size'] as num).toInt(),
  bid1Price: (json['bid1Price'] as num).toDouble(),
  ask1Price: (json['ask1Price'] as num).toDouble(),
  bid1Size: (json['bid1Size'] as num).toInt(),
  preOpenPrice: json['preOpenPrice'] as String,
  preQty: json['preQty'] as String,
  curPreListingPhase: json['curPreListingPhase'] as String,
);

Map<String, dynamic> _$$CoinImplToJson(_$CoinImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'lastPrice': instance.lastPrice,
      'indexPrice': instance.indexPrice,
      'markPrice': instance.markPrice,
      'prevPrice24h': instance.prevPrice24h,
      'price24hPcnt': instance.price24hPcnt,
      'highPrice24h': instance.highPrice24h,
      'lowPrice24h': instance.lowPrice24h,
      'prevPrice1h': instance.prevPrice1h,
      'openInterest': instance.openInterest,
      'openInterestValue': instance.openInterestValue,
      'turnover24h': instance.turnover24h,
      'volume24h': instance.volume24h,
      'fundingRate': instance.fundingRate,
      'nextFundingTime': instance.nextFundingTime.toIso8601String(),
      'predictedDeliveryPrice': instance.predictedDeliveryPrice,
      'basisRate': instance.basisRate,
      'basis': instance.basis,
      'deliveryFeeRate': instance.deliveryFeeRate,
      'deliveryTime': instance.deliveryTime,
      'ask1Size': instance.ask1Size,
      'bid1Price': instance.bid1Price,
      'ask1Price': instance.ask1Price,
      'bid1Size': instance.bid1Size,
      'preOpenPrice': instance.preOpenPrice,
      'preQty': instance.preQty,
      'curPreListingPhase': instance.curPreListingPhase,
    };
