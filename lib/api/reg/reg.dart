import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class RegController {
  Future<bool> createAccountFun({required Map data}) async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");
      var b = {"name": "nishat", "password": "1234567", "phone": "01717171717"};
      var h = {"Accept": "application/json"};
      var res = await http.post(uri, body: data, headers: h);

      if (res.statusCode == 201) {
        return true;
        log("Registration Successful");
      } else if (res.statusCode == 422) {
        return false;

        var e = jsonDecode(res.body);
        log("${e["message"]}");
      }
    } catch (e) {
      log("==$e");
    }return false;
  }
}
