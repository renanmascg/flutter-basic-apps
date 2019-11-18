import 'package:bitcoin_ticker_flutter_app/services/coin_data.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  String selectedCurrency = 'USD';
  Map<String, String> cryptos = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getCryptoData();
  }

  void getCryptoData() async {
    
    for(String crypto in cryptoList) {
      try {
        dynamic coinData = await CoinData().getCoinData(
          crypto: crypto, 
          currency: selectedCurrency
        );

        double coinValue = coinData['last'];

        cryptos[crypto] = coinValue.toStringAsFixed(0);
      
      } catch (err) {
        cryptos[crypto] = 'Error Consulting';
      }
      
    }
    setState(() {
      isLoading = false;
    });

  }

  Column cryptoCards() {
    
    List<Widget> cryptoCards = [];

    for (String crypto in cryptoList) {
      cryptoCards.add(
        CryptoCard(
          cryptoName: crypto,
          selectedCurrency: selectedCurrency,
          lastValue: isLoading ? '?' : cryptos[crypto],
        )
      );
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          cryptoCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: selectedCurrency,
              items: currenciesList.map<DropdownMenuItem<String>>((String item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value;
                  isLoading = true;

                  getCryptoData();

                });
              },
              
            ),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    @required this.cryptoName,
    @required this.lastValue,
    @required this.selectedCurrency,
  });

  final String cryptoName;
  final String lastValue;
  final String selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoName = $lastValue $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
