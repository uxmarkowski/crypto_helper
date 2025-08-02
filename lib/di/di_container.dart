import 'package:crypto_helper/app/http/app_http_client.dart';
import 'package:crypto_helper/app/http/dio_http_client.dart';
import 'package:crypto_helper/di/di_repositories.dart';



class DiContainer {
  DiContainer._({
    required this.appHttpClient,
    required this.repositories,
  });

  final DiRepositories repositories;
  final AppHttpClient appHttpClient;

  static Future<DiContainer> createAndInitDevDiContainer() async{
    final httpClient = DioHttpClient();

    return DiContainer._(
      appHttpClient: httpClient,
      repositories: DiRepositories.devRepo(httpClient),
    );
  }

  DiContainer copyWith({
    DiRepositories? repositories,
  }) {
    return DiContainer._(
      repositories: repositories ?? this.repositories,
      appHttpClient: appHttpClient,
    );
  }
}

