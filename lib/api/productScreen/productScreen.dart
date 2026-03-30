import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as dart;

class ProductScreenApi {
  Future<void> getProduct() async {
    try {
      Uri u = Uri.parse("https://eplay.coderangon.com/api/products");
      var r = await dart.get(u);
      if (r.statusCode == 200) {
      } else {
        EasyLoading.showError("Product Load failed.");
      }
    } catch (e) {}
  }
}
