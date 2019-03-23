import 'dart:async';
import 'dart:convert';
import 'dart:math';
//import 'package:http/http.dart';
import 'package:tango/api/http_api.dart';
import 'package:tango/models/common_response_data.dart';


class Api {

  static CommonResponseData postLogin(String email, String password) {
    //Future.delayed(Duration(seconds: 3));

    Map<String, dynamic> map = {
      'status': 0,
      'errMsg': 'success',
      'data' : {
        'username' : 'John Hanlen'
      },
    };

//    HttpApi httpApi  = HttpApi('http://59.110.139.25');
//
//    final result = httpApi.post('/api_test.php', {});
//
//    print(result);


    final res = json.encode(map);

    return CommonResponseData.fromJSON(json.decode(res));

  }

}