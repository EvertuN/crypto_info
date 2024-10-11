class CryptoModel {
  String cryptoName;
  double price;
  String symbol;
  String image;
  double market_cap;
  double market_cap_rank;
  double total_volume;
  double high_24h;
  double low_24h;

  CryptoModel({
    required this.cryptoName,
    required this.price,
    required this.symbol,
    required this.image,
    required this.market_cap,
    required this.market_cap_rank,
    required this.total_volume,
    required this.high_24h,
    required this.low_24h,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
      cryptoName: json['name'],
      price: json['current_price'].toDouble(),
      symbol: json['symbol'],
      image: json['image'],
      market_cap: json['market_cap'].toDouble(),
      market_cap_rank: json['market_cap_rank'].toDouble(),
      total_volume: json['total_volume'].toDouble(),
      high_24h: json['high_24h'].toDouble(),
      low_24h: json['low_24h'].toDouble(),
    );
  }
}
