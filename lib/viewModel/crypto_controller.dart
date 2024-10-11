import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../model/crypto_model.dart';


class CryptoController extends GetxController {
  var isLoading = false.obs;
  var cryptos = <CryptoModel>[].obs;

  @override
  void onInit() {
    fetchCryptos();
    super.onInit();
  }

  void fetchCryptos() async {
    try {
      isLoading(true);
      var response = await Dio().get(
        'https://api.coingecko.com/api/v3/coins/markets',
        queryParameters: {
          'vs_currency': 'brl',
          'order': 'market_cap_desc',
          'per_page': 20,
          'page': 1,
          'sparkline': false,
        },
      );
      if (response.statusCode == 200) {
        var jsonData = response.data as List;
        var loadedCryptos = jsonData.map((cryptoJson) => CryptoModel.fromJson(cryptoJson)).toList();
        cryptos.value = loadedCryptos;
      }
    } catch (e) {
      print('Erro ao buscar criptomoedas: $e');
    } finally {
      isLoading(false);
    }
  }
}
