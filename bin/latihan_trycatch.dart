
import 'dart:convert';

import 'package:http/http.dart' as http;

void main ()async {
    //fungsi tanpa pengembalian nilai
  // Future <void> tarikdata() async {
  //     var response = await http.get(
  //       Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //     );

  //     var data = jsonDecode(response.body);
  //     print('nama saya ${data[1]['name']}, email saya ${data[1]['email']}, kota saya ${data[1]['address']['city']}');
  // }

  // Future <List<dynamic>> tarikdata() async {
  //   try {
  //     var response = await http.get(
  //       Uri.parse('https://dummyjson.com/products'),
  //     );

  //     var data = jsonDecode(response.body);

  //     return data;
  //   } catch (e) {
  //     print(e);
  //     return [];
  //   }
  // }

  // List<dynamic> hasil = await tarikdata();


  Future <Map<dynamic, dynamic>> tarikdata() async {
    try {
      var response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      var data = jsonDecode(response.body);

      return data;
    } catch (e) {
      print(e);
      return {};
    }
  }

  Map<dynamic, dynamic> hasil = await tarikdata();

    for (var i = 0; i < hasil['products'].length; i++) {
    print('====================');
    print(
      '${hasil['products'][i]['title']}     ${hasil['products'][i]['price']}      ${hasil['products'][i]['stock']}'
    );
  }

  // for (var i = 0; i < hasil.length; i++) {
  //   print('====================');
  //   print(
  //     '${hasil[i]['name']}     ${hasil[i]['username']}      ${hasil[i]['address']['city']}'
  //   );
  // }

  // for (var element in hasil) {
  //   print('====================');
  //   print('${element['name']}     ${element['username']}      ${element['address']['city']}');
  // }

  // hasil.forEach((element){
  //     print('====================');
  //     print('${element['name']}     ${element['username']}      ${element['address']['city']}');
  // });

  
}