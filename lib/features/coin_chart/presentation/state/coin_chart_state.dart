sealed class CoinChartState {}

/// Начальное состояние, ничего не происходит
class CoinChartInitial extends CoinChartState {}

/// Идёт загрузка графика
class CoinChartLoading extends CoinChartState {}

/// Успешная загрузка графика
class CoinChartLoaded extends CoinChartState {
  // final List<CoinChartPoint> points;

  CoinChartLoaded(
      // this.points
  );
}

/// Ошибка при загрузке
class CoinChartError extends CoinChartState {
  final String message;

  CoinChartError(this.message);
}

/// Данные пришли, но пустые (например, API вернуло пустой список)
class CoinChartEmpty extends CoinChartState {}
