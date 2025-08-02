
import '../../domain/entities/coin.dart';
import '../data_transfer_objects/bybit_dto_coin.dart';

extension BybitDtoCoinMapper on BybitDtoCoin {
  Coin toEntity() {
    return Coin(
      symbol: symbol,
      lastPrice: double.tryParse(lastPrice) ?? 0.0,
      indexPrice: double.tryParse(indexPrice) ?? 0.0,
      markPrice: double.tryParse(markPrice) ?? 0.0,
      prevPrice24h: double.tryParse(prevPrice24h) ?? 0.0,
      price24hPcnt: double.tryParse(price24hPcnt) ?? 0.0,
      highPrice24h: double.tryParse(highPrice24h) ?? 0.0,
      lowPrice24h: double.tryParse(lowPrice24h) ?? 0.0,
      prevPrice1h: double.tryParse(prevPrice1h) ?? 0.0,
      openInterest: double.tryParse(openInterest) ?? 0.0,
      openInterestValue: double.tryParse(openInterestValue) ?? 0.0,
      turnover24h: double.tryParse(turnover24h) ?? 0.0,
      volume24h: int.tryParse(volume24h) ?? 0,
      fundingRate: double.tryParse(fundingRate) ?? 0.0,
      nextFundingTime: DateTime.fromMillisecondsSinceEpoch(
        int.tryParse(nextFundingTime) ?? 0,
        isUtc: true,
      ),
      predictedDeliveryPrice: double.tryParse(predictedDeliveryPrice) ?? 0.0,
      basisRate: basisRate,
      basis: basis,
      deliveryFeeRate: deliveryFeeRate,
      deliveryTime: deliveryTime,
      ask1Size: int.tryParse(ask1Size) ?? 0,
      bid1Price: double.tryParse(bid1Price) ?? 0.0,
      ask1Price: double.tryParse(ask1Price) ?? 0.0,
      bid1Size: int.tryParse(bid1Size) ?? 0,
      preOpenPrice: preOpenPrice,
      preQty: preQty,
      curPreListingPhase: curPreListingPhase,
    );
  }
}
