import 'package:crypto_helper/di/di_container.dart';
import 'package:flutter/material.dart';
import 'package:crypto_helper/features/coins_list/presentation/state/coins_list_state.dart';
import 'package:provider/provider.dart';

import '../view_model/coin_list_view_model.dart';

class CoinsListScreen extends StatefulWidget {
  const CoinsListScreen({super.key});

  @override
  State<CoinsListScreen> createState() => _CoinsListScreenState();
}

class _CoinsListScreenState extends State<CoinsListScreen> {

  late final CoinsListViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = CoinsListViewModel(
      context.read<DiContainer>().repositories.coinRepository,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {_viewModel.loadCoins();});
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crypto Coins')),
      body: StreamBuilder<CoinsListState>(
        stream: _viewModel.state,
        initialData: const CoinsListState.initial(),
        builder: (context, snapshot) {
          final state = snapshot.data;

          return state?.when(
            initial: ( ) => const Center(child: Text('Initializing...')),
            loading: ( ) => const Center(child: CircularProgressIndicator()),
            loaded: (coins) => ListView.builder(
              itemCount: coins.length,
              itemBuilder: (context, index) {
                final coin = coins[index];
                return ListTile(
                  title: Text(coin.symbol),
                  subtitle: Text('\$${coin.lastPrice.toString()}'),
                  // trailing: Text('\$${coin.lastPrice.toStringAsFixed(2)}'),
                );
              },
            ),
            empty: ( ) => const Center(child: Text('No coins found')),
            error: (message) => Center(child: Text('Error: $message')),
          )
              ?? const SizedBox.shrink();
        },
      ),
    );
  }

}
