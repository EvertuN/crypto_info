import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/crypto_model.dart';

class CryptoViewPage extends StatelessWidget {
  final CryptoModel crypto;

  CryptoViewPage({Key? key, required this.crypto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(crypto.cryptoName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.network(crypto.image, width: 250, height: 250),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    crypto.cryptoName,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Preço: R\$ ${crypto.price.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Símbolo: ${crypto.symbol.toUpperCase()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Valor de Mercado: ${crypto.market_cap}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Volume Total: ${crypto.total_volume}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Preço máximo nas ultimas 24h: ${crypto.high_24h}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Preço mínimo nas ultimas 24h: ${crypto.low_24h}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
