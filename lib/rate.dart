// BTC/USD?apikey=
import 'network.dart';

const key = '107AEBD0-68A8-4BA8-8E0D-9DE56EB32831';
const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CryptoRate {
  CryptoRate(this.from, this.to);

  final String from;
  final String to;

  Future getRate() async {
    var url = '$coinApiURL/$from/$to?apikey=$key';
    NetworkHelper networkHelper = NetworkHelper(url);
    var exchangeData = await networkHelper.getData();
    return exchangeData['rate'];
  }
}
