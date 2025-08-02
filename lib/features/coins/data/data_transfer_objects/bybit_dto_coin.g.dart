// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bybit_dto_coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BybitDtoCoinImpl _$$BybitDtoCoinImplFromJson(Map<String, dynamic> json) =>
    _$BybitDtoCoinImpl(
      symbol: json['symbol'] as String,
      lastPrice: json['lastPrice'] as String,
      indexPrice: json['indexPrice'] as String,
      markPrice: json['markPrice'] as String,
      prevPrice24h: json['prevPrice24h'] as String,
      price24hPcnt: json['price24hPcnt'] as String,
      highPrice24h: json['highPrice24h'] as String,
      lowPrice24h: json['lowPrice24h'] as String,
      prevPrice1h: json['prevPrice1h'] as String,
      openInterest: json['openInterest'] as String,
      openInterestValue: json['openInterestValue'] as String,
      turnover24h: json['turnover24h'] as String,
      volume24h: json['volume24h'] as String,
      fundingRate: json['fundingRate'] as String,
      nextFundingTime: json['nextFundingTime'] as String,
      predictedDeliveryPrice: json['predictedDeliveryPrice'] as String,
      basisRate: json['basisRate'] as String,
      basis: json['basis'] as String,
      deliveryFeeRate: json['deliveryFeeRate'] as String,
      deliveryTime: json['deliveryTime'] as String,
      ask1Size: json['ask1Size'] as String,
      bid1Price: json['bid1Price'] as String,
      ask1Price: json['ask1Price'] as String,
      bid1Size: json['bid1Size'] as String,
      preOpenPrice: json['preOpenPrice'] as String,
      preQty: json['preQty'] as String,
      curPreListingPhase: json['curPreListingPhase'] as String,
    );

Map<String, dynamic> _$$BybitDtoCoinImplToJson(_$BybitDtoCoinImpl instance) =>
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
      'nextFundingTime': instance.nextFundingTime,
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
