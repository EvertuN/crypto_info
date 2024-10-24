import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../model/crypto_model.dart';
import 'package:fl_chart/fl_chart.dart';

class CryptoController extends GetxController {
  var isLoading = false.obs;
  var cryptos = <CryptoModel>[].obs;

  var cryptoPrices = <FlSpot>[].obs;

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

  void fetchCryptoChart(String id) async {
    try {
      isLoading(true);
      var response = await Dio().get(
        'https://api.coingecko.com/api/v3/coins/$id/market_chart',
        queryParameters: {
          'vs_currency': 'usd',
          'days': 30,
        },
      );

      if (response.statusCode == 200) {
        var jsonData = response.data;
        var pricesData = jsonData['prices'] as List;

        List<FlSpot> priceSpots = pricesData.map((price) {
          double time = (price[0] / 1000).toDouble();
          double value = price[1].toDouble();
          return FlSpot(time, value);
        }).toList();

        cryptoPrices.value = priceSpots;
      }
    } catch (e) {
      print('Erro ao buscar dados do gráfico: $e');
    } finally {
      isLoading(false);
    }
  }
}
