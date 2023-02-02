
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper({this.url});

  final String url;

  getDate () async {

    http.Response response = await http.get(Uri.parse(url));
    print('work3');

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      print('work4');

      var longitude = jsonDecode(data) ['coord']['lon'];
      print(longitude);

      var description = jsonDecode(data) ['weather'][0]['description'];
      print(description);
    } else {
      print('not work');
    }
  }
}