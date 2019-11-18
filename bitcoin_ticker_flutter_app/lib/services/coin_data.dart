import 'package:bitcoin_ticker_flutter_app/services/network.dart';

const String baseURL = 'https://apiv2.bitcoinaverage.com/indices/global/ticker';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  
  Future<dynamic> getCoinData({String currency, String crypto}) async {

    NetworkHelper networkHelper = NetworkHelper(url: '$baseURL/$crypto$currency');

    dynamic cryptoData = await networkHelper.getData();

    return cryptoData;

  }

} 
