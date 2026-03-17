import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class RegController {
  Future<void> createAccountFun() async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");
      var b = {"name": "nishat", "password": "1234567", "phone": "01717171717"};
      var h = {"Accept":"application/json"

      };
      var res = await http.post(uri, body: jsonEncode(b),headers: h);
      log("+++++ ${res.statusCode}");
      if (res.statusCode == 201) {
        log("Registration Successful");
      } else if (res.statusCode == 422) {
        log("already teken");
      }
    } catch (e) {
      log("==$e");
    }
  }
}
